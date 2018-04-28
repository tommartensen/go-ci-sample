package main

import (
	"fmt"
	"github.com/joho/godotenv"
	"log"
	"os"
)

func main() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Hello " + os.Getenv("HELLO_NAME"))
}
