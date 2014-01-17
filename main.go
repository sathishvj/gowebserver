package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/test", testHdlr)
	http.Handle("/", http.StripPrefix("/", http.FileServer(http.Dir("."))))
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}

func testHdlr(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, `
	[
		{ "firstName":"John" , "lastName":"Doe" }, 
		{ "firstName":"Anna" , "lastName":"Smith" }, 
		{ "firstName":"Peter" , "lastName":"Jones" }
	]
	`)
}
