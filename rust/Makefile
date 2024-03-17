run: 
	rm -f output.txt
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: main.rs
	rustc -C opt-level=0 -o main main.rs; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm main

m2: main2.rs
	rustc -C opt-level=0 -o main main2.rs; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm main

m3: main3.rs
	rustc -C opt-level=0 -o main main3.rs; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm main