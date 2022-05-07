package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

func check(e error) {
	if e != nil {
		panic(e)
	}
}

var (
	port        = fmt.Sprintf(":%s", os.Getenv("APP_PORT"))
	destination = os.Getenv("APP_DATA")
)

func greet(w http.ResponseWriter, r *http.Request) {
	str := fmt.Sprintf("Hello %s", r.URL.Path[1:])
	fmt.Fprintln(w, str)

	d1 := []byte(str)
	file := fmt.Sprintf("%s/%s.txt", destination, r.URL.Path[1:])
	err := ioutil.WriteFile(file, d1, 0666)
	check(err)

	log.Printf("Done : %s", file)

}

func main() {

	http.HandleFunc("/", greet)

	log.Fatal(http.ListenAndServe(port, nil))

}
