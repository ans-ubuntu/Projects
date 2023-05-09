FROM golang:1.16-alpine

WORKDIR /app

RUN go mod init github.com/my-web-server

COPY task14.go .
COPY static/ static/

RUN go mod download
RUN go build -o task14 .

EXPOSE 8080

CMD ["./task14"]
