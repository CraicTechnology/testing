FROM nginx:latest

RUN apt-get update && \
	apt-get install nano && \
	apt-get clean

#ADD ./nginx_web.conf /etc/nginx/sites-available/default
ADD ./nginx_web.conf /etc/nginx/conf.d/default.conf
#RUN service nginx restart
