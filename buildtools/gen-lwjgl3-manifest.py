#!/usr/bin/env python3
# Remove lwjgl3 not supported mods

## Import library
import json


## Run main function
projectIDs = [
    624967, # RenderLib
    624960, # Nothirium
    409087, # Entity Culling
    620262, # 燐/Hesperus
    419286, # MixinBooter
    242818, # CodeChicken Lib 1.8.+
    258426, # CB Multipart
    231868, # EnderCore
    228702, # Project Red - Core
    229046, # Project Red - Illumination
    229045 # Project Red - Integration
]

# Read manifest.json
with open('./manifest.json', 'r') as f:
    data = json.load(f)

# Remove lwjgl3 not supported mods
data['files'] = [item for item in data['files'] if item['projectID'] not in projectIDs]

# Write manifest.json
with open('./cmmc/manifest.json', 'w') as f:
    json.dump(data, f, indent=2)