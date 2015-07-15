FROM dockerfile/nodejs

ADD . /var/app

ENV VIRTUAL_HOST catfingers.co.uk
EXPOSE 8080

RUN npm install -g http-server

CMD cd /var/app/public && http-server -p 8080