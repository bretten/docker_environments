FROM ubuntu-php8

COPY php.ini /etc/php/8.0/cli/conf.d/99-custom.ini

EXPOSE 8000

ENTRYPOINT ["/usr/bin/php", "-d", "variables_order=EGPCS"]
CMD ["/var/www/html/artisan", "serve", "--host=0.0.0.0", "--port=80"]

# Run the following to override for specific app:
# docker run -it -dp 8000:80 -v "C:\path\to\repo\on\host\:/var/www/html/[app_name]" --name ubuntu-php8-laravel ubuntu-php8-laravel "/var/www/html/[app_name]/artisan" "serve" "--host=0.0.0.0" "--port=80"