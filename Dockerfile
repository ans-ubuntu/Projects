FROM golang:1.18.1

RUN go mod init github.com/my-web-server

COPY task14 .
COPY static/ static/

RUN go mod download
RUN go build -o task16 .

EXPOSE 8080

CMD ["./task16"]
