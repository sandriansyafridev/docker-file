package main

import (
	"fmt"
	"net/http"
)

func HelloWorld(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello World!")
}

func main() {

	http.HandleFunc("/", HelloWorld)

	http.ListenAndServe(":8080", nil)

}
