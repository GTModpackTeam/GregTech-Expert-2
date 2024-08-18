#!/usr/bin/env python3
# Remove lwjgl3 not supported mods

## Import library
import json


## Run main function
projectIDs = [
    419286, # MixinBooter
    870276, # ConfigAnytime
    460609, # CensoredASM
    873867, # Red Core
    874067, # Valkyrie
    910715, # Alfheim Lighting Engine
    624967, # RenderLib
    409087, # Entity Culling
    408853, # Particle Culling
]

# Read manifest.json
with open('./manifest.json', 'r') as f:
    data = json.load(f)

# Remove lwjgl3 not supported mods
data['files'] = [item for item in data['files'] if item['projectID'] not in projectIDs]

# Write manifest.json
with open('./cmmc/manifest.json', 'w') as f:
    json.dump(data, f, indent=2)
