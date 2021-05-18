package main

import (
	"encoding/json"
	"log"
	"net/http"
)

/***
How to run:
* Run project in terminal: go run server.go
*/

type Response struct {
	Message string `json:"message"`
}

// main will run the server on port 3000
func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("API", "Sandbox Go API")
		w.Header().Set("Content-Type", "application/json")

		var js []byte
		var err error

		status := http.StatusOK
		msg := Response{Message: "Response to Sandbox Go API"}

		if r.URL.Path != "/" {
			log.Printf("Request not found: %s %s", r.Method, r.URL.Path)
			status = http.StatusNotFound
			msg = Response{Message: "Not Found"}
		} else {
			log.Printf("Request: %s %s", r.Method, r.URL.Path)
		}

		if js, err = json.Marshal(msg); err != nil {
			log.Printf("Failed to decode message: %v", err)
			status = http.StatusInternalServerError
			js = []byte(err.Error())
		}

		w.WriteHeader(status)
		w.Write(js)

	})

	log.Print("Running on port 3000")
	if err := http.ListenAndServe(":3000", nil); err != nil {
		log.Fatalf("failed to run server on port 3000: %s", err)
	}
}
