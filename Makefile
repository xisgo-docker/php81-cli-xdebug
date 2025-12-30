.PHONY: *

default: build push

build:
	docker build . --platform linux/amd64,linux/arm64 -t xisgo/php-cli-xdebug:$(v)

push: build
	docker build . --platform linux/amd64,linux/arm64 --push -t xisgo/php-cli-xdebug:$(v)

images:
	docker --config ${HOME}/.config/xisgo-docker images xisgo/php-cli-xdebug
