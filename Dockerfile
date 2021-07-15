FROM docker/compose:latest

ARG COMPOSER_VERSION=1

RUN apk --no-cache add php7 php7-fpm php7-opcache php7-mysqli php7-json php7-openssl php7-curl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session \
    php7-mbstring php7-gd git curl less openssh yarn && \
    rm -rf /var/lib/apt/lists/*

RUN yarn global add gulp-cli
RUN yarn global add npm

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}