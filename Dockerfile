FROM phusion/baseimage:0.9.17
MAINTAINER Dmitry Sandalov <dmitry@sandalov.org>

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx git
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx
RUN rm /var/www/html/index.nginx-debian.html
RUN git clone -b gh-pages https://github.com/Laverna/static-laverna /var/www/html
RUN rm -rf /var/lib/apt/lists/*

CMD ["nginx"]
EXPOSE 80/tcp
