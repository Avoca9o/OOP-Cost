run: main.go
	for (( i=1; i<=11; i++ )) \
	do \
	go build -o main -gcflags="-N -l" main.go; \
	./main; \
	done; \
	rm main