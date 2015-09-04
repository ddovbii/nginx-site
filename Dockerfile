FROM nginx

ENV APP_URL null

RUN apt-get update
RUN apt-get install -y git 

COPY pullApp.sh /tmp/

CMD sh /tmp/pullApp.sh $APP_URL && nginx -g 'daemon off;' 
