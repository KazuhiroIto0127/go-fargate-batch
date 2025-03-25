package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Starting Go Fargate Task...")

	time.Sleep(5 * time.Second)

	fmt.Println("Go Fargate Task Completed.")
}
