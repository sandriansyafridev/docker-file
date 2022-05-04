package main

import (
	"fmt"
	"net/http"
	"os"
)

var (
	port = os.Getenv("APP_PORT")
)

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")

}

func main() {

	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":"+port, nil)
}
