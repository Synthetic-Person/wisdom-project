.PHONY: all format lint test clean

all: format lint test

format:
	python -m json.tool questions.json > formatted_questions.json

test:
	python -c 'import json; json.load(open("questions.json"))'

clean:
	rm -f formatted_questions.json
