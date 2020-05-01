FROM php:5.6-apache
LABEL MAINTAINER=MikZuit
# RUN apt-get update && apt-get install -y python-yaml
#   python-jinja2
#   python-httplib2
#   python-keyczar
#   python-paramiko
#   python-setuptools
#   python-pkg-resources

# Install xdebug with pecl
RUN pecl install xdebug-2.5.5
RUN docker-php-ext-enable xdebug\n#zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20131226/xdebug.so
RUN echo "xdebug.remote_enable=1 xdebug.remote_autostart=1 xdebug.profiler_enable_trigger=1 xdebug.profiler_output_dir='/var/log'" >> /usr/local/etc/php/conf.d/xdebug.ini
#Supervisor to run multiple process\n
# RUN apt-get -y install supervisor\n
# COPY config/supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf\n
# RUN mkdir -p /var/log/supervisor\n\n# some extensions\n
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version
# check for this line, are they secure?
RUN export COMPOSER_ALLOW_SUPERUSER=1;
RUN php -v && composer -V
#Ports for: ssh apache2
EXPOSE 80 9000