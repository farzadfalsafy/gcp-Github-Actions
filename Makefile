install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_myapp.py

format:
	black *.py


lint:
	pylint --disable=R,C myapp.py

All: install lint test