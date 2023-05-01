FROM alpine:3.17.3

RUN apk add --no-cache --update \
            git \
            patch \
            curl \
            less \
            php81 \
            php81-bcmath \
            php81-ctype \
            php81-curl \
            php81-dom \
            php81-fileinfo \
            php81-iconv \
            php81-intl \
            php81-json \
            php81-mbstring \
            php81-mysqli \
            php81-sqlite3 \
            php81-opcache \
            php81-openssl \
            php81-pdo \
            php81-pdo_mysql \
            php81-pdo_sqlite \
            php81-phar \
            php81-session \
            php81-simplexml \
            php81-sodium \
            php81-tokenizer \
            php81-xml \
            php81-xmlwriter \
            php81-xmlreader \
            php81-xsl \
            php81-zip \
            php81-pecl-xdebug && \
    sed -i 's/;zend_extension/zend_extension/g' /etc/php81/conf.d/50_xdebug.ini
