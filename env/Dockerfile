FROM golang:1.18.1-alpine3.15

ENV APP_PORT=8080
ENV APP_ETC=HEHEHE
ENV APP_AUTHOR=sandriansyafri

RUN mkdir app
COPY ./main.go /app/ 

RUN cd /app/ && ls -l

EXPOSE 8080/tcp

CMD cd /app/ && go run main.go
