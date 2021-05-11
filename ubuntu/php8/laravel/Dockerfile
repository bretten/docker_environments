FROM ubuntu-php8

ARG XDEBUG
ARG XDEBUG_PORT
ARG XDEBUG_PHPINI="/etc/php/8.0/cli/conf.d/php-ext-xdebug.ini"
RUN if [ "${XDEBUG}" = 'true' ]; then \
    apt-get update \
    && apt-get install -y php-xdebug \
    && echo "[XDebug]" >> ${XDEBUG_PHPINI} \
    && echo "zend_extension="$(find /usr/lib/php/ -name xdebug.so | sort -z | head -n 1)" >> ${XDEBUG_PHPINI}" \
    && echo "xdebug.client_port = ${XDEBUG_PORT}" >> ${XDEBUG_PHPINI} \
    && echo "xdebug.mode = debug" >> ${XDEBUG_PHPINI} \
    && echo "xdebug.start_with_request = yes" >> ${XDEBUG_PHPINI} \
    && echo "xdebug.client_host = host.docker.internal" >> ${XDEBUG_PHPINI} \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ;\
fi;

COPY php.ini /etc/php/8.0/cli/conf.d/99-custom.ini

EXPOSE 8000

ENTRYPOINT ["/usr/bin/php", "-d", "variables_order=EGPCS"]
CMD ["/var/www/html/artisan", "serve", "--host=0.0.0.0", "--port=80"]

# Run the following to override for specific app:
# docker run -it -dp 8000:80 -v "C:\path\to\repo\on\host\:/var/www/html/[app_name]" --name ubuntu-php8-laravel ubuntu-php8-laravel "/var/www/html/[app_name]/artisan" "serve" "--host=0.0.0.0" "--port=80"