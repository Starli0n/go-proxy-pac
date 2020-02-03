package main

import (
  "log"
  "net/http"
)

func main() {
  http.HandleFunc("/proxy.pac", func(w http.ResponseWriter, r *http.Request) {
    http.ServeFile(w, r, "./static/proxy.pac")
  })

  log.Println("Listening...")
  http.ListenAndServe(":8080", nil)
}

