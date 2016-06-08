package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"strconv"
)

var (
	port    = flag.Int("p", 80, "port on which to run the server")
	rootdir = flag.String("d", ".", "root directory for serving static files. Typically the one with index.html.")
)

func main() {
	flag.Parse()

	http.HandleFunc("/test", testHdlr)

	fmt.Printf("Starting simple http server with rootDir='%s' and port=%d\n", *rootdir, *port)
	http.Handle("/", http.StripPrefix("/", http.FileServer(http.Dir(*rootdir))))
	if err := http.ListenAndServe(":"+strconv.Itoa(*port), nil); err != nil {
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
