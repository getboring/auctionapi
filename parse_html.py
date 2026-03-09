from bs4 import BeautifulSoup

def get_property_type(filepath):
    # DTO properties don't have types listed in the Properties_*.htm files
    # We must go to the individual property page P_RainWorx_FrameWorx_DTO_...
    # to find the type. Let's verify this.
    print(f"Examining {filepath}...")
    with open(filepath, 'r', encoding='utf-8') as f:
        html = f.read()
    soup = BeautifulSoup(html, 'lxml')

    title = soup.title.string.strip() if soup.title else "No Title"
    print("Title:", title)

    # Try finding property type
    # In Sandcastle, property type is in the Property Value section
    mainBody = soup.find('div', id='mainBody')
    if mainBody:
        prop_val_head = mainBody.find(lambda tag: tag.name in ['h4', 'h3'] and tag.text and 'Property Value' in tag.text)
        if prop_val_head:
            next_sib = prop_val_head.find_next_sibling()
            if next_sib:
                ret_text = next_sib.get_text(" ", strip=True)
                print("Property Value:", ret_text)

        # Property type might also be in the syntax block
        syntax_container = mainBody.find('div', id='snippetGroup_syntax')
        if syntax_container:
            code_block = syntax_container.find('div', class_='OH_CodeSnippetContainerCode')
            if code_block:
                print("Syntax:", code_block.get_text(" ", strip=True).replace("\n", " ").strip())

get_property_type('chm_extracted/html/P_RainWorx_FrameWorx_DTO_ShippingMethod_DisplayOrder.htm')
