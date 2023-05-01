.PHONY: default build push images

default: build push

build:
	docker build --tag xisgo/php81-cli-xdebug:$(v) .

push:
	docker push xisgo/php81-cli-xdebug:$(v)

images:
	docker images xisgo/php81-cli-xdebug