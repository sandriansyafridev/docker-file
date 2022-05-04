FROM golang:1.18.1-alpine3.15

ENV APP_PORT=8085


WORKDIR /app
COPY main.go /app

EXPOSE ${APP_PORT}

ENTRYPOINT [ "go", "run" ]
CMD ["main.go"] 

