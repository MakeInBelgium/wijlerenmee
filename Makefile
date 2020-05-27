up-php:
	php -S 0.0.0.0:8000

up-python:
	python3 -m http.server 8000

css-watch:
	scss --watch assets/css/style.scss:assets/css/style.css

.PHONY: up-php up-python
