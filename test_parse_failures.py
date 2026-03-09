import os
# Did we generate any errors?
if os.path.exists('docs/PARSE_ERRORS.md'):
    print("Found parse errors. Contents:")
    with open('docs/PARSE_ERRORS.md', 'r') as f:
        print(f.read())
else:
    print("No parse errors found!")
