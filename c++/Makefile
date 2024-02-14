run: 
	rm -f output.txt
	make m
	make m2
	make m3

m: main.cpp
	g++ main.cpp -O0 -o main; \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	rm main

m2: main2.cpp
	g++ main2.cpp -O0 -o main; \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	rm main

m3: main3.cpp
	g++ main3.cpp -O0 -o main; \
	s=$$(gdate +%s%3N); \
	./main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	rm main