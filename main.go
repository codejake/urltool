package main

import (
	"fmt"
	"log"
	"net/url"
	"os"
)

func usage() {
	fmt.Println("urltool v0.10")
	fmt.Println("https://github.com/codejake/urltool")
	fmt.Println("urltool is a simple program that parses out the elements of a URL.")
	fmt.Println()
	fmt.Println("usage: ", os.Args[0], " <url>")

	os.Exit(1)
}

func main() {
	specifiedUrl := "https://t.email.currys.co.uk/r/?id=h24a341,8b3374d,743904&p1=filarrentcarcirebon.com%2Fcss%2Fadmine%2Ffhbhb%2Fsug3cm%2FYWNjb3VudHMucGF5YWJsZUBzcHJpbmdmaWVsZC5rMTIub3IudXM=#dogfood=popcorn"

	// If URL specified.
	if len(os.Args) == 2 {
		specifiedUrl = os.Args[1]
	} else {
		usage()
	}

	u, err := url.Parse(specifiedUrl)

	if err != nil {
		log.Fatal(err)
		return
	}

	fmt.Println("Scheme: ", u.Scheme)
	fmt.Println("Host: ", u.Host)
	fmt.Println("Path: ", u.Path)

	queries := u.Query()
	fmt.Println("Query Strings: ")
	for key, value := range queries {
		fmt.Printf("  %v = %v\n", key, value)
	}

	fmt.Println("Fragment: ", u.Fragment)

}
