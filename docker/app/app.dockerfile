FROM php:7.2.2-fpm

RUN apt-get update && \
    apt-get install -y git zip unzip && \
    apt-get install -y mysql-client --no-install-recommends && \
    docker-php-ext-install pdo_mysql && \
    php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer && \
    apt-get -y autoremove && \
    apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#RUN apt-get update && \
#	apt-get install -y mysql-client --no-install-recommends && \
#    docker-php-ext-install pdo_mysql

#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
