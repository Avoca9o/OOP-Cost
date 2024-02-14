package main

type Base struct {
}

func main() {
	for i := 0; i < 100000000; i++ {
		obj := new(Base)
		_ = obj
	}
}
