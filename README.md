# functions-from-zero
functions

[![Python application test with Github Actions](https://github.com/TheOphige/functions-from-zero/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/TheOphige/functions-from-zero/actions/workflows/main.yml)


### To call Microservice

something like this
'''bash
curl -X 'POST' \
  'https://theophige-zany-orbit-vq6v7w67xr62pv4j-8080.preview.app.github.dev/wiki' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "facebook",
  "length": 3
}'
'''

### build container

'docker build .'
'docker image ls'

### Run container
'docker run -p 127.0.0.1:8080:8080 5e65a84f2e1a'

### Invoke POST request

run 'invoke.sh'