package main

import (
	"bytes"
	"flag"
	"log"
	"io/ioutil"
	"os"
)

func main() {
	// This is the path where we will keep the data, this path is a volume used
	// by the container
	folder_to_store := "/kubelite/"

	str_old := flag.String("str_old", "latest", "Old string to replace")
	str_new := flag.String("str_new", "commitID", "New string value")
	file := flag.String("file", "./example.txt", "Path to the file")

	// Parse the flags
	flag.Parse()

	// Load the file in the path received from by the input
	// Source: https://pkg.go.dev/io/ioutil@go1.18.3#ReadFile
	input, err := ioutil.ReadFile(folder_to_store + *file)
	if err != nil {
		log.Fatal(err)
		os.Exit(1)
	}

	// Replace the values using the vars
	// Source: https://pkg.go.dev/bytes@go1.18.3#Replace
	output := bytes.Replace(input, []byte(*str_old), []byte(*str_new), -1)

	// Create the file in the path
	// Source: https://pkg.go.dev/io/ioutil@go1.18.3#WriteFile
	if err = ioutil.WriteFile("/kubelite/" + *file + ".new", output, 0644); err != nil {
		log.Fatal(err)
		os.Exit(1)
	}
}
