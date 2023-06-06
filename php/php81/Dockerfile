FROM php:8.1.17-fpm-alpine

ENV PHP_REDIS=5.3.1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN echo "Asia/Shanghai" > /etc/timezone

# update
RUN set -ex \
    && apk update \
    && apk add --no-cache libstdc++ wget openssl bash \
    libmcrypt-dev libzip-dev libpng-dev libc-dev zlib-dev librdkafka-dev libmemcached-dev cyrus-sasl-dev

RUN apk add --no-cache --virtual .build-deps autoconf automake make g++ gcc \
    libtool dpkg-dev dpkg pkgconf file re2c pcre-dev php81-dev php81-pear openssl-dev

# 安装php常用扩展
RUN docker-php-ext-configure gd --with-freetype \
    && docker-php-ext-install gd bcmath opcache mysqli pdo pdo_mysql sockets zip

# Extension redis mcrypt  
RUN pecl install redis mcrypt && docker-php-ext-enable redis mcrypt

# 安装 Composer
RUN wget https://mirrors.cloud.tencent.com/composer/composer.phar \
    && mv composer.phar  /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 删除系统扩展
RUN apk del .build-deps \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man \
    && php -m