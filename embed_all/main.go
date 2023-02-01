package main

import (
	"embed"
	"fmt"
)

//go:embed all:data/*
var data embed.FS

func main() {
	hiddenFileContents, err := data.ReadFile("data/_hidden.txt")
	if err != nil {
		panic(err)
	}
	fmt.Println(string(hiddenFileContents))
}
