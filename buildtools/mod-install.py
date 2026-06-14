#!/usr/bin/env python3
# GTE2 Mod install

## Import library
import json
import os
import shutil
import requests
from concurrent.futures import ThreadPoolExecutor

## Initialize
cf_url = "https://api.curseforge.com"
headers = {
  "Accept": "application/json",
  "x-api-key": os.environ.get("CF_API_TOKEN")
}
tpe = ThreadPoolExecutor(max_workers=20)

## Run main function
def main(key):
    url = "{}/v1/mods/{}/files/{}".format(
        cf_url,
        key["projectID"],
        key["fileID"]
    )
    mod_json = requests.get(url, allow_redirects=True, stream=True, headers=headers)

    if mod_json.status_code == 200:
        mod_json = mod_json.json()
        print("{} - {}".format(mod_json["data"]["fileName"], mod_json["data"]["downloadUrl"]))

        mod_file = requests.get(mod_json["data"]["downloadUrl"], allow_redirects=True, stream=True, headers=headers)
        with open(mod_json["data"]["fileName"], "wb") as f:
            shutil.copyfileobj(mod_file.raw, f)

            # ../overrides/mods/
            if mod_json["data"]["fileName"].endswith(".jar"):
                if key["required"]:
                    shutil.move(mod_json["data"]["fileName"], "../overrides/mods/")
                else:
                    os.rename(mod_json["data"]["fileName"], "../overrides/mods/{}".format(mod_json["data"]["fileName"].replace(".jar", ".jar.disabled")))

            # ../overrides/resourcepacks/
            elif mod_json["data"]["fileName"].endswith(".zip"):
                if key["required"]:
                    shutil.move(mod_json["data"]["fileName"], "../overrides/resourcepacks/")
                else:
                    os.rename(mod_json["data"]["fileName"], "../overrides/resourcepacks/{}".format(mod_json["data"]["fileName"].replace(".zip", ".zip.disabled")))

            print("Downloaded {}".format(mod_json["data"]["fileName"]))
    else:
        tpe.shutdown()
        raise Exception("Status code is not 200 : " + url)


## Import List
manifest_json = json.load(open("../manifest.json"))

## Access CF and save file if request succeeds
for key in manifest_json["files"]:
    tpe.submit(main, key)

## Finalize
tpe.shutdown()
print("finished all download.")
