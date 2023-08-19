FROM phpdockerio/php:8.2-fpm
WORKDIR "/app"

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        php8.2-bcmath \
        php8.2-cgi \
        php8.2-dba \
        php8.2-decimal \
        php8.2-imap \
        php8.2-intl \
        php8.2-mcrypt \
        php8.2-mysql \
        php8.2-xdebug \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN php artisan migrate --force && php artisan admin:install
