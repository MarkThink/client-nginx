FROM nginx:1.9.0

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled/* /etc/nginx/conf.d/

RUN mkdir -p /dvwa && mkdir -p /dvwa/log

RUN chown -R www-data.www-data /dvwa /dvwa/log

