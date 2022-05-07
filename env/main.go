package main

import (
	"fmt"
	"net/http"
)

func greet(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello World 2!")
}

func main() {

	http.HandleFunc("/", greet)
	http.ListenAndServe(":8080", nil)

}
