package main

import (
	"fmt"
	"net/http"
	"os"
)

func greet(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello World 2!")
}

var port = fmt.Sprintf(":%s", os.Getenv("APP_PORT"))

func main() {

	http.HandleFunc("/", greet)
	http.ListenAndServe(port, nil)

}
