import os
import glob
import re

print("Running QA checks...")

# 1. Count extracted vs total HTML files
all_html_files = glob.glob('chm_extracted/html/*.htm')
total_html = len(all_html_files)
print(f"Total HTML files in source: {total_html}")

total_methods = 0
total_classes = 0
total_enums = 0

for file in glob.glob('docs/*.md'):
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
        if not file.endswith('README.md') and not file.startswith('docs/DataTypes') and not file.startswith('docs/Enums'):
            # Count methods (starting with ### or ####)
            total_methods += len(re.findall(r'^###+ \w+', content, re.MULTILINE))
            if file == 'docs/OtherServices.md':
                total_classes += len(re.findall(r'^## \w+Service', content, re.MULTILINE))
            else:
                total_classes += 1
        elif file.startswith('docs/DataTypes'):
            total_classes += len(re.findall(r'^## \w+', content, re.MULTILINE))
        elif file.startswith('docs/Enums'):
            total_enums += len(re.findall(r'^## \w+', content, re.MULTILINE))

print(f"Total methods documented: {total_methods}")
print(f"Total classes (DTOs + Services) documented: {total_classes}")
print(f"Total enums documented: {total_enums}")

# Many HTML files are properties (P_*.htm), fields (F_*.htm), constructors (M_..._ctor.htm), overloads (Overload_*.htm)
# or just namespce indexes (N_*.htm). We don't document properties as separate entities, but as part of DTOs.
# So the count won't exactly match 1:1, but this gives a good overview.

# 2. Spot check
print("\nSpot checking a few methods:")
services = ['ListingService.md', 'UserService.md', 'AccountingService.md', 'EventService.md']
for s in services:
    with open(f'docs/{s}', 'r', encoding='utf-8') as f:
        content = f.read()
        methods = re.findall(r'^### (\w+)', content, re.MULTILINE)
        if methods:
            print(f"- {s} has {len(methods)} methods. First 3: {methods[:3]}")

# 3. Verify no residual HTML
has_html = False
for file in glob.glob('docs/*.md'):
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
        if '<div' in content or '<span' in content or '<a href' in content:
            print(f"Warning: Found HTML tag in {file}")
            has_html = True

if not has_html:
    print("\nVerified: No obvious residual HTML tags in Markdown files.")

# 4. Confirm every method in docs has entry in README
readme_content = ""
with open('docs/README.md', 'r', encoding='utf-8') as f:
    readme_content = f.read()

missing_in_readme = 0
for file in glob.glob('docs/*.md'):
    if file.endswith('README.md') or file.startswith('docs/DataTypes') or file.startswith('docs/Enums'):
        continue
    with open(file, 'r', encoding='utf-8') as f:
         content = f.read()
         methods = re.findall(r'^###+ (\w+)', content, re.MULTILINE)
         for m in methods:
             # Check if method is in README
             # The link format in README is [MethodName](Service.md#methodname)
             anchor = m.lower().replace(' ', '-')
             # Also consider cases
             if f"[{m}]" not in readme_content:
                 missing_in_readme += 1

print(f"\nMissing methods in README index: {missing_in_readme}")
