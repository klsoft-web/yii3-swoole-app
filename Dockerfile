FROM phpswoole/swoole:6.2.2-php8.2

RUN apt update

# Required tools
RUN apt -y install \
    unzip \
    libicu-dev

# PHP extensions
RUN docker-php-ext-install \
    intl \
    sysvsem
    
WORKDIR /app

COPY . .

# Composer
RUN composer install

# Locale
ENV LC_ALL=C.UTF-8