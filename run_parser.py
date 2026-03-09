import os
import glob
from bs4 import BeautifulSoup
import re

HTML_DIR = 'chm_extracted/html'
DOCS_DIR = 'docs'
os.makedirs(DOCS_DIR, exist_ok=True)

def read_soup(filename):
    with open(os.path.join(HTML_DIR, filename), 'r', encoding='utf-8') as f:
        return BeautifulSoup(f.read(), 'lxml')

def clean_text(text):
    if not text: return ""
    return re.sub(r'\s+', ' ', text).strip()

def get_summary(soup):
    summary_div = soup.find('div', class_='summary')
    if summary_div:
        text = summary_div.get_text(" ", strip=True)
        if text: return text
    return "(Not documented in source)"

def get_syntax(soup):
    syntax_container = soup.find('div', id='snippetGroup_syntax')
    if syntax_container:
        code_block = syntax_container.find('div', class_='OH_CodeSnippetContainerCode')
        if code_block:
            return code_block.get_text(" ", strip=True).replace("\n", " ").strip()

    code_blocks = soup.find_all('div', class_='OH_CodeSnippetContainerCode')
    for cb in code_blocks:
        text = cb.get_text(" ", strip=True).replace("\n", " ")
        if any(kw in text for kw in ["public", "private", "class", "void", "string", "int", "bool"]):
            return text.strip()
    return "(Not documented in source)"

def get_returns(mainBody):
    if not mainBody: return "(Not documented in source)"
    return_head = mainBody.find(lambda tag: tag.name in ['h4', 'h3'] and tag.text and 'Return Value' in tag.text)
    if return_head:
         next_sib = return_head.find_next_sibling()
         if next_sib:
              ret_text = next_sib.get_text(" ", strip=True)
              # Standard Sandcastle: Type: <a href>Type</a><br>Description
              br = next_sib.find('br')
              if br and br.next_sibling:
                  ret_desc = br.next_sibling.string if br.next_sibling.string else br.next_sibling.get_text(" ", strip=True)
                  return f"{ret_text.replace('Type:', '').strip().split()[0]} - {ret_desc}"
              return ret_text.replace('Type:', '').strip()
    return "(Not documented in source)"

def parse_parameters(mainBody):
    params = []
    if not mainBody: return params
    params_head = mainBody.find(lambda tag: tag.name in ['h4', 'h3'] and tag.text and 'Parameters' in tag.text)
    if params_head:
        dl = params_head.find_next_sibling('dl')
        if dl:
            dts = dl.find_all('dt')
            dds = dl.find_all('dd')
            for dt, dd in zip(dts, dds):
                name_span = dt.find('span', class_='parameter')
                name = name_span.text if name_span else dt.get_text(" ", strip=True)

                type_str = ""
                desc_str = ""

                # Sandcastle format: dd contains "Type: <a href>Type</a><br/>Description"
                # Type might have spaces e.g., System.Collections.Generic.List<String>
                # Let's extract type exactly from the first text/links after "Type:"
                dd_text_full = dd.get_text(" ", strip=True)

                a_tags = dd.find_all('a')
                if a_tags and "Type:" in dd_text_full:
                    # sometimes the type is multiple a tags like List<String>
                    # Instead, grab everything between "Type:" and the next <br> or <p>
                    pass

                br = dd.find('br')
                if br:
                    type_part = "".join([str(c) for c in dd.contents[:dd.contents.index(br)]])
                    type_soup = BeautifulSoup(type_part, 'lxml')
                    type_str = type_soup.get_text(" ", strip=True).replace('Type:', '').strip()

                    desc_part = "".join([str(c) for c in dd.contents[dd.contents.index(br)+1:]])
                    desc_soup = BeautifulSoup(desc_part, 'lxml')
                    desc_str = desc_soup.get_text(" ", strip=True)
                else:
                    # Try regex
                    match = re.search(r'Type:\s*(.*?)\s*(?:$|\.)', dd_text_full)
                    if match:
                         type_str = match.group(1).split()[0] # basic guess
                         desc_str = dd_text_full.replace(f"Type: {type_str}", "").strip()
                    else:
                         type_str = dd_text_full.split()[0] if dd_text_full else "Unknown"
                         desc_str = "(Not documented in source)"

                if not type_str: type_str = "Unknown"
                if not desc_str: desc_str = "(Not documented in source)"

                params.append({'name': name, 'type': type_str, 'desc': desc_str})
    return params

def get_namespace(soup):
    mainBody = soup.find('div', id='mainBody')
    if mainBody:
        for strong in mainBody.find_all('strong'):
            if 'Namespace:' in strong.text:
                ns_a = strong.find_next_sibling('a')
                if ns_a:
                    return ns_a.get_text(strip=True)
                return strong.next_sibling.strip()
    return "Unknown"

def process_service(service_name, service_prefix):
    print(f"Processing {service_name}...")
    service_file = f'T_{service_prefix}_{service_name}.htm'
    soup = read_soup(service_file)
    ns = get_namespace(soup)

    methods = []

    # Need to handle overloads correctly (Overload_*.htm). But usually we can just scan M_*.htm
    # Some methods are M_..._MethodName_1.htm, etc.
    method_files = glob.glob(f'{HTML_DIR}/M_{service_prefix}_{service_name}_*.htm')

    for mf in method_files:
        filename = os.path.basename(mf)
        try:
            msoup = read_soup(filename)
            mainBody = msoup.find('div', id='mainBody')

            title = msoup.title.string.strip() if msoup.title else "No Title"
            method_name = title.replace(' Method', '').replace(' Constructor', '').split('.')[-1].strip()
            # If it has parameters in title e.g. "Method (String, Int32)", clean it
            if '(' in method_name:
                method_name = method_name[:method_name.find('(')].strip()

            summary = get_summary(msoup)
            syntax = get_syntax(msoup)
            returns = get_returns(mainBody)
            params = parse_parameters(mainBody)

            exceptions = []
            if mainBody:
                ex_heads = mainBody.find_all(lambda tag: tag.name in ['h4', 'h3'] and tag.text and 'Exceptions' in tag.text)
                for head in ex_heads:
                    table = head.find_next_sibling('table')
                    if table:
                        rows = table.find_all('tr')
                        for row in rows[1:]:
                            cols = row.find_all('td')
                            if len(cols) >= 2:
                                exceptions.append(f"{cols[0].get_text(' ', strip=True)}: {cols[1].get_text(' ', strip=True)}")

                ex_region = mainBody.find('div', string=re.compile('Exceptions'))
                if ex_region and ex_region.parent.get('class') == ['OH_CollapsibleAreaRegion']:
                     table = ex_region.find_next_sibling('div').find('table')
                     if table:
                         rows = table.find_all('tr')
                         for row in rows[1:]:
                             cols = row.find_all('td')
                             if len(cols) >= 2:
                                 exceptions.append(f"{cols[0].get_text(' ', strip=True)}: {cols[1].get_text(' ', strip=True)}")

            methods.append({
                'name': method_name,
                'summary': summary,
                'syntax': syntax,
                'returns': returns,
                'params': params,
                'exceptions': exceptions
            })
        except Exception as e:
            print(f"Error parsing {filename}: {e}")
            with open('docs/PARSE_ERRORS.md', 'a') as ef:
                ef.write(f"- `{filename}`: {str(e)}\n")

    # Sort methods alphabetically and then by syntax length (to group overloads nicely)
    methods.sort(key=lambda m: (m['name'], len(m['syntax'])))

    with open(f'{DOCS_DIR}/{service_name}.md', 'w', encoding='utf-8') as f:
        f.write(f"# {service_name}\n\n")
        f.write(f"**Namespace:** `{ns}`\n\n")
        f.write(f"## Overview\n{get_summary(soup)}\n\n")
        f.write("## Methods\n\n")

        for m in methods:
            f.write(f"### {m['name']}\n")
            f.write(f"- **Endpoint / Signature:** `{m['syntax']}`\n")
            f.write(f"- **Description:** {m['summary']}\n")

            f.write("- **Parameters:**\n")
            if m['params']:
                f.write("  | Name | Type | Description |\n")
                f.write("  |------|------|-------------|\n")
                for p in m['params']:
                    desc = p['desc'].replace('|', '&#124;').replace('\n', ' ')
                    type_str = p['type'].replace('|', '&#124;').replace('\n', ' ')
                    f.write(f"  | {p['name']} | `{type_str}` | {desc} |\n")
            else:
                f.write("  None\n")

            f.write(f"- **Returns:** {m['returns']}\n")

            f.write("- **Exceptions / Errors:**\n")
            if m['exceptions']:
                for e in m['exceptions']:
                    f.write(f"  - {e}\n")
            else:
                f.write("  None documented\n")

            f.write("\n")

process_service('ListingService', 'RainWorx_FrameWorx_BLL_ServiceImplementations')
process_service('UserService', 'RainWorx_FrameWorx_BLL_ServiceImplementations')
process_service('AccountingService', 'RainWorx_FrameWorx_BLL_ServiceImplementations')
process_service('EventService', 'RainWorx_FrameWorx_BLL_Events_ServiceImplementations')

def extract_all_services():
    print("Finding other services...")
    # Find all T_...Service.htm that implement a service (we'll guess based on name ending in Service)
    all_service_files = glob.glob(f'{HTML_DIR}/T_*Service.htm')
    known_services = ['ListingService', 'UserService', 'AccountingService', 'EventService']

    other_services = []

    for sf in all_service_files:
        filename = os.path.basename(sf)
        # Format: T_{namespace}_{classname}.htm
        # Get the class name (the last part)
        parts = filename.replace('.htm', '').split('_')
        classname = parts[-1]

        if classname.endswith('Service') and classname not in known_services and classname != 'Service':
            # Need the prefix, which is everything between T_ and _classname
            prefix = '_'.join(parts[1:-1])
            other_services.append((classname, prefix))

    # Process other services
    for classname, prefix in other_services:
        try:
            process_service(classname, prefix)
        except Exception as e:
            print(f"Error processing other service {classname}: {e}")
            with open('docs/PARSE_ERRORS.md', 'a') as ef:
                ef.write(f"- `{classname}` ({prefix}): {str(e)}\n")

    # We want to combine them into OtherServices.md
    if other_services:
        with open(f'{DOCS_DIR}/OtherServices.md', 'w', encoding='utf-8') as combined:
            combined.write("# Other Services\n\n")
            for classname, prefix in other_services:
                service_file = f'{DOCS_DIR}/{classname}.md'
                if os.path.exists(service_file):
                    with open(service_file, 'r', encoding='utf-8') as sf:
                        content = sf.read()
                        # Demote headings by 1 level
                        content = content.replace('\n# ', '\n## ').replace('\n## ', '\n### ').replace('\n### ', '\n#### ')
                        if content.startswith('# '):
                            content = '## ' + content[2:]
                        combined.write(content + "\n\n---\n\n")
                    # Remove the individual file
                    os.remove(service_file)

extract_all_services()

def extract_datatypes():
    print("Extracting DTOs and Enums...")
    # Group by namespace
    dtos_by_ns = {}
    enums_by_ns = {}

    # 1. Extract DTOs
    dto_files = glob.glob(f'{HTML_DIR}/T_*DTO_*.htm')
    for df in dto_files:
        filename = os.path.basename(df)
        if "Properties" in filename or "Methods" in filename or "Events" in filename:
            continue

        try:
            soup = read_soup(filename)
            title = soup.title.string.strip() if soup.title else ""
            if "Enumeration" in title:
                continue # Handled below

            ns = get_namespace(soup)

            classname = title.replace(' Class', '').replace(' Structure', '').replace(' Interface', '').split('.')[-1]
            summary = get_summary(soup)

            properties = []
            mainBody = soup.find('div', id='mainBody')
            if mainBody:
                # Find the properties table.
                # In sandcastle, sometimes there is a link to properties or a table right here
                # Search for <th>Name</th>
                tables = mainBody.find_all('table')
                for table in tables:
                    th = table.find('th')
                    if th and 'Name' in th.text:
                        rows = table.find_all('tr')
                        for row in rows[1:]:
                            cols = row.find_all('td')
                            if len(cols) >= 2:
                                # First col has icon, second has Name (and maybe type), third has Description
                                texts = [c.get_text(" ", strip=True) for c in cols]
                                texts = [t for t in texts if t] # remove empty

                                prop_name = texts[0]
                                prop_desc = texts[1] if len(texts) > 1 else "(Not documented in source)"

                                # Let's try to get type from the Property file
                                # e.g. P_RainWorx_FrameWorx_DTO_Class_PropName.htm
                                type_str = "Unknown"
                                prop_links = cols[-2].find_all('a') if len(cols) > 1 else []
                                if prop_links:
                                    href = prop_links[0].get('href', '')
                                    if href.startswith('P_'):
                                        try:
                                            psoup = read_soup(href)
                                            pbody = psoup.find('div', id='mainBody')
                                            if pbody:
                                                phead = pbody.find(lambda t: t.name in ['h4','h3'] and t.text and 'Property Value' in t.text)
                                                if phead:
                                                    nsib = phead.find_next_sibling()
                                                    if nsib:
                                                        type_str = nsib.get_text(" ", strip=True).replace("Type:", "").strip().split()[0]
                                        except Exception as e:
                                            pass

                                properties.append({
                                    'name': prop_name,
                                    'type': type_str,
                                    'desc': prop_desc
                                })

            if ns not in dtos_by_ns:
                dtos_by_ns[ns] = []

            dtos_by_ns[ns].append({
                'name': classname,
                'summary': summary,
                'properties': properties
            })

        except Exception as e:
            with open('docs/PARSE_ERRORS.md', 'a') as ef:
                ef.write(f"- `{filename}`: {str(e)}\n")

    # 2. Extract Enums
    # Look for files with "Enumeration" in the title
    enum_files = glob.glob(f'{HTML_DIR}/T_*.htm')
    for ef in enum_files:
        filename = os.path.basename(ef)
        if "Properties" in filename or "Methods" in filename or "Events" in filename:
            continue

        try:
            soup = read_soup(filename)
            title = soup.title.string.strip() if soup.title else ""
            if "Enumeration" not in title:
                continue

            ns = get_namespace(soup)
            enum_name = title.replace(' Enumeration', '').split('.')[-1]
            summary = get_summary(soup)

            values = []
            mainBody = soup.find('div', id='mainBody')
            if mainBody:
                tables = mainBody.find_all('table')
                for table in tables:
                    th = table.find('th')
                    if th and 'Member name' in th.text:
                        rows = table.find_all('tr')
                        for row in rows[1:]:
                            cols = row.find_all('td')
                            # ['', 'Member name', 'Value', 'Description']
                            if len(cols) >= 3:
                                texts = [c.get_text(" ", strip=True) for c in cols]
                                # remove empty icon col
                                if len(texts) > 3 and not texts[0]:
                                    texts = texts[1:]

                                val_name = texts[0] if len(texts) > 0 else "Unknown"
                                val_int = texts[1] if len(texts) > 1 else ""
                                val_desc = texts[2] if len(texts) > 2 else "(Not documented in source)"
                                if not val_desc: val_desc = "(Not documented in source)"

                                values.append({
                                    'name': val_name,
                                    'int': val_int,
                                    'desc': val_desc
                                })

            if ns not in enums_by_ns:
                enums_by_ns[ns] = []

            enums_by_ns[ns].append({
                'name': enum_name,
                'summary': summary,
                'values': values
            })

        except Exception as e:
             with open('docs/PARSE_ERRORS.md', 'a') as ef:
                ef.write(f"- `{filename}`: {str(e)}\n")

    # Write DTOs grouped by namespace
    for ns, dtos in dtos_by_ns.items():
        ns_clean = ns.replace('.', '_')
        if not ns_clean or ns_clean == "Unknown": ns_clean = "Misc"

        with open(f'{DOCS_DIR}/DataTypes_{ns_clean}.md', 'w', encoding='utf-8') as f:
            f.write(f"# Data Types - {ns}\n\n")

            # Sort alphabetically
            dtos.sort(key=lambda d: d['name'])
            for dto in dtos:
                f.write(f"## {dto['name']}\n")
                f.write(f"`{ns}.{dto['name']}`\n\n")
                f.write(f"{dto['summary']}\n\n")

                f.write("| Property | Type | Description |\n")
                f.write("|----------|------|-------------|\n")
                if dto['properties']:
                    for p in dto['properties']:
                        desc = p['desc'].replace('|', '&#124;').replace('\n', ' ')
                        type_str = p['type'].replace('|', '&#124;')
                        f.write(f"| {p['name']} | `{type_str}` | {desc} |\n")
                else:
                    f.write("| (None) | | (Not documented in source) |\n")
                f.write("\n")

    # Write Enums grouped by namespace
    for ns, enums in enums_by_ns.items():
        ns_clean = ns.replace('.', '_')
        if not ns_clean or ns_clean == "Unknown": ns_clean = "Misc"

        with open(f'{DOCS_DIR}/Enums_{ns_clean}.md', 'w', encoding='utf-8') as f:
            f.write(f"# Enums - {ns}\n\n")

            # Sort alphabetically
            enums.sort(key=lambda e: e['name'])
            for enum in enums:
                f.write(f"## {enum['name']}\n")
                f.write(f"`{ns}.{enum['name']}`\n\n")
                f.write(f"{enum['summary']}\n\n")

                f.write("| Value | Integer | Description |\n")
                f.write("|-------|---------|-------------|\n")
                if enum['values']:
                    for v in enum['values']:
                        desc = v['desc'].replace('|', '&#124;').replace('\n', ' ')
                        f.write(f"| {v['name']} | {v['int']} | {desc} |\n")
                else:
                    f.write("| (None) | | (Not documented in source) |\n")
                f.write("\n")

extract_datatypes()

# Also build the README.md
def build_readme():
    print("Building README.md...")
    with open(f'{DOCS_DIR}/README.md', 'w', encoding='utf-8') as f:
        f.write("# AuctionWorx v3.5 API Reference\n\n")

        # Main services
        f.write("## Core Services\n")
        f.write("- [ListingService](ListingService.md)\n")
        f.write("- [UserService](UserService.md)\n")
        f.write("- [AccountingService](AccountingService.md)\n")
        f.write("- [EventService](EventService.md)\n")
        f.write("- [Other Services](OtherServices.md)\n\n")

        f.write("## Data Types\n")
        dtype_files = sorted(glob.glob(f'{DOCS_DIR}/DataTypes_*.md'))
        for df in dtype_files:
            name = os.path.basename(df)
            f.write(f"- [{name.replace('.md', '')}]({name})\n")
        f.write("\n")

        f.write("## Enums\n")
        enum_files = sorted(glob.glob(f'{DOCS_DIR}/Enums_*.md'))
        for ef in enum_files:
            name = os.path.basename(ef)
            f.write(f"- [{name.replace('.md', '')}]({name})\n")

build_readme()
# One missing piece for the README: the index of every method.
def append_method_index_to_readme():
    print("Appending method index to README...")
    with open(f'{DOCS_DIR}/README.md', 'a', encoding='utf-8') as readme:
        readme.write("\n## Method Index\n\n")

        # Get all services
        service_files = ['ListingService.md', 'UserService.md', 'AccountingService.md', 'EventService.md', 'OtherServices.md']
        for sf in service_files:
            sf_path = f'{DOCS_DIR}/{sf}'
            if os.path.exists(sf_path):
                readme.write(f"### {sf.replace('.md', '')}\n")
                with open(sf_path, 'r', encoding='utf-8') as f:
                    for line in f:
                        # Find level 3 headings in regular services, and level 4 headings in OtherServices
                        if line.startswith('### ') and sf != 'OtherServices.md':
                            method = line.replace('### ', '').strip()
                            anchor = method.lower().replace(' ', '-')
                            readme.write(f"- [{method}]({sf}#{anchor})\n")
                        elif line.startswith('#### ') and sf == 'OtherServices.md':
                            method = line.replace('#### ', '').strip()
                            anchor = method.lower().replace(' ', '-')
                            readme.write(f"- [{method}]({sf}#{anchor})\n")
                readme.write("\n")

append_method_index_to_readme()
