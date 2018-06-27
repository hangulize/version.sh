#!/bin/bash

hangulize-version () {
  local print_hangulize_version
  print_hangulize_version="$(mktemp --suffix=.go)"

  cat << EOF > "$print_hangulize_version"
package main
import "fmt"
import "github.com/hangulize/hangulize"
func main() { fmt.Println(hangulize.Version) }
EOF

  go run "$print_hangulize_version"
}
