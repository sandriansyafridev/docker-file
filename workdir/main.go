package main

import (
	"fmt"
	"net/http"
	"os"
)

func greet(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello World 2!")
}

func main() {

	http.HandleFunc("/", greet)
	http.ListenAndServe(":"+os.Getenv("APP_PORT"), nil)

}
