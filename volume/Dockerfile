FROM golang:1.18.1-alpine3.15

ENV APP_PORT=8082
ENV APP_DATA=/logs

RUN mkdir app
COPY ./main.go /app/ 

RUN cd /app/ && ls -l

EXPOSE ${APP_PORT}/tcp
VOLUME ${APP_DATA}

CMD cd /app/ && go run main.go
