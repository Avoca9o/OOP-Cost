package main

import (
	"fmt"
	"os"
	"time"
)

type Base struct {
}

func main() {
	startTime := time.Now()

	for i := 0; i < 100000000; i++ {
		obj := new(Base)
		_ = obj
	}

	endTime := time.Now()

	duration := endTime.Sub(startTime).Milliseconds()

	fout, err := os.OpenFile("../output.txt", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		panic(err)
	}
	defer fout.Close()

	_, err = fout.WriteString(fmt.Sprintf("%d\n", duration))
	if err != nil {
		panic(err)
	}
}
