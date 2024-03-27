import requests
import json
import yaml

repo_list = ['freeCodeCamp/freeCodeCamp','996icu/996.ICU','EbookFoundation/free-programming-books']

document = {}

for i in repo_list:
    url = "https://api.github.com/repos/" + i
    r = requests.get(url)
    response = json.loads(r.content)
    document[i] = response["stargazers_count"]

print(document)
print (yaml.dump(document, sort_keys=False))
