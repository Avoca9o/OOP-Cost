run: main.go
	for (( i=1; i<=11; i++ )) \
	do \
	go build main.go; \
	s=$$(gdate +%s%3N); \
	go run main.go; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> ../output.txt; \
	done; \
	rm main