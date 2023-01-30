package main

import (
	"fmt"

	"github.com/martinjungblut/go-cryptsetup"
)

func main() {
	fmt.Println("Hello cryptsetup")
	_, err := cryptsetup.Init("/dev/mapper/nvme0n1p3_crypt")
	if err == nil {
		fmt.Println("Cryptsetup initialized")
	} else {
		panic(err)
	}
}
