#!/usr/bin/env python3
# GTE2 Mod install

## Import library
import json
import os
import shutil
import requests

## Init
### API
cf_url = "https://api.curseforge.com"
headers = {
  "Accept": "application/json",
  "x-api-key": os.environ.get("CF_API_TOKEN")
}

### Import List
manifest_json = json.load(open("cf/manifest.json"))

## Access CF and save file if request succeeds
os.makedirs("./overrides/mods/")
for key in manifest_json["files"]:
    mod_json = requests.get("{}/v1/mods/{}/files/{}".format(
        cf_url,
        key["projectID"],
        key["fileID"]
    ), allow_redirects=True, stream=True, headers=headers)

    if mod_json.status_code == 200:
        mod_json = mod_json.json()
        mod_file = requests.get(mod_json["data"]["downloadUrl"], allow_redirects=True, stream=True, headers=headers)
        with open(mod_json["data"]["fileName"], "wb") as f:
            shutil.copyfileobj(mod_file.raw, f)
            shutil.move(mod_json["data"]["fileName"], "./overrides/mods/")
            print("Downloaded {f}".format(f=mod_json["data"]["fileName"]))
