FROM nginx:latest

MAINTAINER "Sam Jordan" <sam@netsells.co.uk>

ADD config/nginx.conf /etc/nginx/nginx.conf
ADD config/app /etc/nginx/sites-available/app

RUN mkdir /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/app

RUN mkdir -p /data/logs
VOLUME ["/data"]

CMD ["nginx"]