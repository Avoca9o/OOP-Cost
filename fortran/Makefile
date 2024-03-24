run: 
	rm -f output.txt
	export LIBRARY_PATH="$LIBRARY_PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib"
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: main.f90
	gfortran main.f90 -O0 -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main

m2: main2.f90
	gfortran main2.f90 -O0 -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main types.mod

m3: main3.f90
	gfortran main3.f90 -O0 -o main; \
	for (( i=1; i<=11; i++ )) \
	do \
	./main; \
	done; \
	rm main types.mod