FROM golang:1.18.1-alpine3.15 as builder

WORKDIR /app/
COPY main.go .
RUN go build -o main main.go



FROM alpine
WORKDIR /app/
COPY --from=builder /app/main .
CMD [ "/app/main" ]