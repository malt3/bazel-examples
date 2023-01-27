package main

import (
	"fmt"
	"net/http"
)

const indexPage = `<html>
<head>
<title>Go Microservice</title>
</head>
<body>
<h1>Go Microservice</h1>
<img src="/static/gopher.jpg">
<p><a href="/hello">hello</a></p>
<p><a href="/headers">headers</a></p>
</body>
</html>
`

func index(w http.ResponseWriter, req *http.Request) {
	fmt.Fprint(w, indexPage)
}

func hello(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "hello\n")
}

func headers(w http.ResponseWriter, req *http.Request) {
	for name, headers := range req.Header {
		for _, h := range headers {
			fmt.Fprintf(w, "%v: %v\n", name, h)
		}
	}
}

func main() {
	fmt.Println("Starting Go Microservice on port 80")
	fs := http.FileServer(http.Dir("/static"))
	http.Handle("/static/", http.StripPrefix("/static", fs))
	http.HandleFunc("/", index)
	http.HandleFunc("/hello", hello)
	http.HandleFunc("/headers", headers)
	http.ListenAndServe(":80", nil)
}
