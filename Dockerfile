FROM php:7.2-fpm


COPY src/pub/index.php /var/www

# Set working directory
WORKDIR /var/www

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    libsodium-dev \
    zip

RUN docker-php-ext-install sodium bcmath

## Install extensions
#RUN docker-php-ext-install mbstring zip exif pcntl
#RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
#RUN docker-php-ext-install gd


## Install Dockerizr
#ENV DOCKERIZE_VERSION v0.6.1
#RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
#    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
#    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

## Install Xdebug
#RUN pecl install xdebug && \
#	docker-php-ext-enable xdebug && \
#	sed -i '1 a xdebug.remote_autostart=true' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
#	sed -i '1 a xdebug.remote_mode=req' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
#	sed -i '1 a xdebug.remote_handler=dbgp' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
#	sed -i '1 a xdebug.remote_connect_back=1 ' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
#	sed -i '1 a xdebug.remote_port=9000' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
#	sed -i '1 a xdebug.remote_host=127.0.0.1' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && \
#sed -i '1 a xdebug.remote_enable=1' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini


# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory contents
COPY ./src /var/www

# Copy existing application directory permissions
COPY --chown=www:www ./src /var/www

# Change current user to www
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
