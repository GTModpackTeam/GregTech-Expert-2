#!/usr/bin/env python3
# Generate LWJGL3 compatible manifest.json

import json
import json5


def main():
    # Read overrides configuration
    with open('lwjgl3-overrides.jsonc', 'r', encoding='utf-8') as f:
        overrides = json5.load(f)

    remove_ids = set(overrides.get('remove', []))
    add_mods = overrides.get('add', [])
    replace_mods = {mod['projectID']: mod['with'] for mod in overrides.get('replace', [])}

    # Read manifest.json
    with open('../manifest.json', 'r', encoding='utf-8') as f:
        data = json.load(f)

    # Remove mods
    data['files'] = [item for item in data['files'] if item['projectID'] not in remove_ids]

    # Replace mods (update projectID and/or fileID)
    for item in data['files']:
        if item['projectID'] in replace_mods:
            replacement = replace_mods[item['projectID']]
            item['projectID'] = replacement['projectID']
            item['fileID'] = replacement['fileID']
            if 'required' in replacement:
                item['required'] = replacement['required']

    # Add mods
    for mod in add_mods:
        data['files'].append({
            'projectID': mod['projectID'],
            'fileID': mod['fileID'],
            'required': mod.get('required', True)
        })

    # Write manifest.json
    with open('../cmmc/manifest.json', 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2)


if __name__ == '__main__':
    main()
