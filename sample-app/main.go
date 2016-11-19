package main

import (
	"io"
	"net/http"
	"os"
) 

func hello(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello world!")
} 

func main() {
	 
	mux := http.NewServeMux()
	mux.HandleFunc("/", hello)
	http.ListenAndServe(":" + os.Getenv("PORT"), mux)
}
