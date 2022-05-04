FROM golang:1.18.1-alpine3.15
ENV APP_PORT=8081

RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}
CMD go run app/main.go 

