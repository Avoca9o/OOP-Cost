run: 
	rm -f output.txt
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: main.swift
	swiftc main.swift -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm main

m2: main2.swift
	swiftc main2.swift -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm main

m3: main3.swift
	swiftc main3.swift -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm main