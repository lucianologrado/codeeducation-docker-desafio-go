package main

import (
	"fmt"
	"os"
)

func main() {
	var texto string
	if len(os.Args) <= 1 {
		texto = "Ola mundo vazio!"
	} else {
		texto = os.Args[1]
	}
    fmt.Println(texto)
}