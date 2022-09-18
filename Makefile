setup:
	python3 -m venv ~/.udacity-capstone

activate:
	source ~/.udacity-capstone/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#No tests yet

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
