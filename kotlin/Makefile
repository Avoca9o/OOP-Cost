run: 
	rm -f output.txt
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: main.kt
	kotlinc main.kt -include-runtime -d main.jar; \
	for (( i=1; i<=11; i++ )) \
	do \
	java -Xint -jar main.jar; \
	done; \
	rm main.jar

m2: main2.kt
	kotlinc main2.kt -include-runtime -d main.jar; \
	for (( i=1; i<=11; i++ )) \
	do \
	java -Xint -jar main.jar; \
	done; \
	rm main.jar

m3: main3.kt
	kotlinc main3.kt -include-runtime -d main.jar; \
	for (( i=1; i<=11; i++ )) \
	do \
	java -Xint -jar main.jar; \
	done; \
	rm main.jar