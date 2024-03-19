run: main.go
	for (( i=1; i<=11; i++ )) \
	do \
	go build -o main -gcflags="-N -l" main.go; \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> ../output.txt; \
	done; \
	rm main