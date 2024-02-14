run: main.go
	go build main.go; \
	s=$$(gdate +%s%3N); \
	go run main.go; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> ../output.txt; \
	rm main