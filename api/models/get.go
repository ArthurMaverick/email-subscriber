package models

import "github.com/ArthurMaverick/rabbitmq-example/db"

func Get(id int64) (todo Todo, err error) {
	conn, err := db.OpenConnection()
	if err != nil {
		return
	}
	defer conn.Close()

	sql := `SELECT id, title, description, done FROM todos WHERE id = $1`

	row := conn.QueryRow(sql, id)

	err = row.Scan(&todo.ID, &todo.Title, &todo.Description, &todo.Done)

	return
}
