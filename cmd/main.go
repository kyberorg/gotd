package main

import "fmt"
import "time"

func main() {
  dt := time.Now()
  dtString :=  dt.Format("02/01/2006 15:04:05.000 -0700 MST")
  fmt.Println("Current date-time is:",dtString)   
}

