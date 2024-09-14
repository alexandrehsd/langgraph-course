# custom targets
.PHONY: environment
# setup python environment
environment:
	pyenv install -s 3.11.9 ;\
	pyenv virtualenv 3.11.9 langgraph-course ;\
	pyenv local langgraph-course

.PHONY: requirements
# install core requirements
requirements:
	pip install --upgrade pip
	pip install poetry
	poetry install

.PHONY: jupyter
# start a jupyter notebook server
jupyter:
	PYTHONPATH=$(shell pwd) python -m jupyter notebook