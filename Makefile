.PHONY: *

default: build push

build:
	docker --config ${HOME}/.config/xisgo-docker build --tag xisgo/php81-cli-xdebug:$(v) .

push:
	docker --config ${HOME}/.config/xisgo-docker push xisgo/php81-cli-xdebug:$(v)

images:
	docker --config ${HOME}/.config/xisgo-docker images xisgo/php81-cli-xdebug