FROM golang:1.18.1-alpine3.15 as builderGolang

WORKDIR /app/
COPY ./main.go ./

RUN go build -o main main.go


FROM alpine:3
WORKDIR /app/
COPY --from=builderGolang /app/main ./

RUN pwd

CMD /app/main
