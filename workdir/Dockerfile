FROM golang:1.18.1-alpine3.15

ENV APP_PORT=8083
ENV WORKDIR=/app/

WORKDIR /app/
COPY ./main.go ${WORKDIR}

EXPOSE ${APP_PORT}/tcp

CMD go run main.go