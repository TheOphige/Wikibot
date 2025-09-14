# Wikibot

A CLI tool and API to scrape Wikipedia, deployed on AWS.

[![Python application test with Github Actions](https://github.com/TheOphige/Wikibot/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/TheOphige/Wikibot/actions/workflows/main.yml)

---

## Usage

### Calling the Microservice

You can send a POST request to the deployed endpoint:

```bash
curl -X 'POST' \
  'https://theophige-zany-orbit-vq6v7w67xr62pv4j-8080.preview.app.github.dev/wiki' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "facebook",
  "length": 3
}'
```

### Build the Container

```bash
docker build -t wikibot .
docker image ls
```

### Run the Container

```bash
docker run -p 127.0.0.1:8080:8080 wikibot
```

### Invoke POST Request Locally

You can use the provided helper script:

```bash
./invoke.sh
```
