run: 
	rm -f output.txt
	make m
	make m2
	make m3

m: Main.java
	javac Main.java; \
	s=$$(gdate +%s%3N); \
	java -Xint Main; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	rm Main.class

m2: Main2.java
	javac Main2.java; \
	s=$$(gdate +%s%3N); \
	java -Xint Main2; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	rm Main2.class

m3: Main3.java
	javac Main3.java; \
	s=$$(gdate +%s%3N); \
	java -Xint Main3; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	rm Main3.class