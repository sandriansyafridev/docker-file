FROM golang:1.18.1-alpine3.15

ARG app=main
ENV APP_PORT=8084

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go


ENV app=${app}
EXPOSE ${APP_PORT}
CMD go run app/${app}.go 

