FROM alpine:3.23.2

RUN apk add --no-cache --update \
            git \
            patch \
            curl \
            less \
            php83 \
            php83-bcmath \
            php83-ctype \
            php83-curl \
            php83-dom \
            php83-fileinfo \
            php83-iconv \
            php83-intl \
            php83-json \
            php83-mbstring \
            php83-mysqli \
            php83-sqlite3 \
            php83-opcache \
            php83-openssl \
            php83-pdo \
            php83-pdo_mysql \
            php83-pdo_sqlite \
            php83-phar \
            php83-session \
            php83-simplexml \
            php83-sodium \
            php83-tokenizer \
            php83-xml \
            php83-xmlwriter \
            php83-xmlreader \
            php83-xsl \
            php83-zip \
            php83-pecl-xdebug && \
            ln -sf /usr/bin/php83 /usr/bin/php && \
            sed -i 's/;zend_extension/zend_extension/g' /etc/php83/conf.d/50_xdebug.ini
