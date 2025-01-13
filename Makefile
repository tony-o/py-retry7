_: clean build

lint:
	black tests/**.py retry7/**.py

clean:
	rm -Rf build dist retry7.egg-info

publish:
	python -m pip install --upgrade twine
	python -m twine upload --repository pypi dist/*

build:
	python -m pip install --upgrade build 
	python -m build
