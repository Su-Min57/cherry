package main

import(
	"fmt"
	"time"
)

func main(){
	for{
		fmt.Println("Hello Cherry")
		time.Sleep(10 * time.Second)
	}
}