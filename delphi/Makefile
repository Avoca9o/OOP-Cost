run: 
	rm -f output.txt
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: main.pas
	fpc -O- main.pas; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main main.o

m2: main2.pas
	fpc -O- main2.pas; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main2; \
	done; \
	rm main2 main2.o

m3: main3.pas
	fpc -O- main3.pas; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main3; \
	done; \
	rm main3 main3.o