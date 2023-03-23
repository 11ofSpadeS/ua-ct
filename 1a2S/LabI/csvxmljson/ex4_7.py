from lxml import etree

def print_element(element, indent=0):
    print(' ' * indent + element.tag)
    for key, value in element.attrib.items():
        print(' ' * (indent+2) + f'{key}: {value}')
    if element.text and element.text.strip():
        print(' ' * (indent+2) + f'text: {element.text.strip()}')
    for child in element:
        print_element(child, indent+2)

def main():
    xml = etree.parse('conf.xml')
    root = xml.getroot()
    print_element(root)

if __name__ == '__main__':
    main()
