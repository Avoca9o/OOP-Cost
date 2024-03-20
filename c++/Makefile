run: 
	rm -f output.txt
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: main.cpp
	g++ -w -std=c++17 main.cpp -O0 -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main

m2: main2.cpp
	g++ -w -std=c++17 main2.cpp -O0 -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main

m3: main3.cpp
	g++ -w -std=c++17 main3.cpp -O0 -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main