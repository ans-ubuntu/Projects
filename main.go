package main

import (
	"io"
	"net/http"
)

func main() {
	http.HandleFunc("/", hello)
	http.HandleFunc("/test", bar)
	http.ListenAndServe(":8080", nil)
}

func hello(w http.ResponseWriter, req *http.Request) {
	io.WriteString(w, "Hello World")
}

func bar(w http.ResponseWriter, req *http.Request) {
	io.WriteString(w, "Hello World, Folks!")
}
