package handlers

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/ArthurMaverick/rabbitmq-example/models"
)

func List(w http.ResponseWriter, r *http.Request) {
	todos, err := models.GetAll()
	if err != nil {
		log.Printf("Error getting all todos: %v", err)
	}
	w.Header().Add("Content-Type", "application/json")
	json.NewEncoder(w).Encode(todos)
}
