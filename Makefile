install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv *.py

format:	
	black *.py mylib/*.py

lint:
	pylint --disable=R,C,E1120,W0621 --extension-pkg-whitelist='pydantic' main.py --ignore-patterns=test_.*?py *.py  mylib/*.py

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 688876173477.dkr.ecr.us-east-2.amazonaws.com
	docker build -t wiki .
	docker tag wiki:latest 688876173477.dkr.ecr.us-east-2.amazonaws.com/wiki:latest
	docker push 688876173477.dkr.ecr.us-east-2.amazonaws.com/wiki:latest
		
		
all: install lint test format deploy