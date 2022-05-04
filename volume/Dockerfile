FROM golang:1.18.1-alpine3.15

ENV APP_PORT=8082
ENV APP_DATA=/logs


RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}

CMD go run app/main.go 

