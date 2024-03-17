run: 
	rm -f output.txt
	echo kComplete >> output.txt
	make m
	make m2
	make m3

m: Main.java
	javac Main.java; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	java -Xint Main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm Main.class

m2: Main2.java
	javac Main2.java; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	java -Xint Main2; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm Main2.class Base.class

m3: Main3.java
	javac Main3.java; \
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	java -Xint Main3; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done; \
	rm Main3.class Base.class Derived.class