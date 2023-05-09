FROM golang:1.18.1

RUN go mod init github.com/deatend/Projects

COPY . .
RUN go mod download
RUN go build -o task16 .

EXPOSE 8080

CMD ["./task16"]
