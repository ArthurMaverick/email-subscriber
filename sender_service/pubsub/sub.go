package pubsub

import (
	"fmt"

	"github.com/streadway/amqp"
)

func Sub() {
	fmt.Println("Connecting to RabbitMQ...")
	conn, err := amqp.Dial("amqp://guest:guest@localhost:5672")

	if err != nil {
		fmt.Println(err)
		panic(err)
	}
	defer conn.Close()
	fmt.Println("successfully connected to our RabbitMQ Instance")

	fmt.Println("Consuming Application...")
	ch, err := conn.Channel()
	if err != nil {
		fmt.Println(err)
		panic(err)
	}
	defer ch.Close()

	msgs, _ := ch.Consume(
		"TestQueue",
		"",
		true,
		false,
		false,
		false,
		nil,
	)

	forever := make(chan bool)
	go func() {
		for d := range msgs {
			fmt.Printf("Received a message: %s\n", d.Body)
		}
	}()
	fmt.Println("Successfully Consumed Message from Queue")
	fmt.Println(" [*] Waiting for messages.")
	<-forever
}
