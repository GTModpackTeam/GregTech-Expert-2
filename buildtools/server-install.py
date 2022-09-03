# GTE2 Server install

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
manifest_json = json.load(open("manifest.json"))

## Move dir
shutil.move("./overrides/bansoukou/", "./")
shutil.move("./overrides/config/", "./")
shutil.move("./overrides/local/", "./")
shutil.move("./overrides/resources/", "./")
shutil.move("./overrides/scripts/", "./")

## Download mods
os.makedirs("mods")
os.chdir("./mods")

## Access CF and save file if request succeeds
for key in manifest_json["files"]:
    mod_json = requests.get("{f1}/v1/mods/{f2}/files/{f3}".format(
        f1=cf_url,
        f2=key["projectID"],
        f3=key["fileID"]
    ), allow_redirects=True, stream=True, headers=headers)

    if mod_json.status_code == 200:
        mod_json = mod_json.json()
        mod_file = requests.get(mod_json["data"]["downloadUrl"], stream=True)
        with open(mod_json["data"]["fileName"], "wb") as f:
            shutil.copyfileobj(mod_file.raw, f)
        del mod_file
