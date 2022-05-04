FROM golang:1.18.1-alpine3.15

ENV APP_PORT=8083


WORKDIR /app
COPY main.go /app

EXPOSE ${APP_PORT}

CMD go run main.go 

