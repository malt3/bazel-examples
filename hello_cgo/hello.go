package main

/*
#cgo CPPFLAGS: -I${SRCDIR}/../..
#include "lib/calc/calc.h"
*/
import "C"
import "fmt"

func main() {
	a := C.int(1)
	b := C.int(2)
	result := C.add(a, b)
	fmt.Printf("Hello from cgo: %d + %d = %d\n", a, b, result)
}
