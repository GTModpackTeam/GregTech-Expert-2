# GTE2 Server install

## Import library
import requests
import shutil
import json
import os


## Init
### API
cf_url = 'https://api.curseforge.com'
headers = {
  'Accept': 'application/json',
  'x-api-key': os.environ.get('CF_API_TOKEN')
}

### Import List
json_data = json.load(open('manifest.json'))

## Move dir
shutil.move('./overrides/bansoukou/', './')
shutil.move('./overrides/config/', './')
shutil.move('./overrides/local/', './')
shutil.move('./overrides/resources/', './')
shutil.move('./overrides/scripts/', './')

## Download mods
os.makedirs('mods')
os.chdir('./mods')
for jsn_key in json_data['files']:
    r = requests.get('{f1}/v1/mods/{f2}/files/{f3}'.format(
        f1=cf_url,
        f2=jsn_key['projectID'],
        f3=jsn_key['fileID']
    ), headers = headers)
    urlData = requests.get(r.json()["data"]["downloadUrl"]).content

    if (jsn_key['required']):
        with open(r.json()["data"]["fileName"], mode='wb') as f:
            f.write(urlData)
            print(f'Fin - {r.json()["data"]["fileName"]}')
