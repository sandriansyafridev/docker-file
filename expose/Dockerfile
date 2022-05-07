FROM golang:1.18.1-alpine3.15

RUN mkdir app
COPY ./main.go /app/ 

RUN cd /app/ && ls -l

EXPOSE 8080/tcp

CMD cd /app/ && go run main.go
