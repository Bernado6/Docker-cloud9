install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	# python -m pytest -w --cov=myrepolib tests/.*py
	# python -m pytest -w --nbval notebook.ipynb
	
	
lint:
	pylint --disable=R,C docker_cloud9.py
	
all: install lint test