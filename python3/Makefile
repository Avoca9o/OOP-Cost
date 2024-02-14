run: 
	rm -f output.txt
	make m
	make m2

m: main.py
	s=$$(gdate +%s%3N); \
	python3 main.py; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt

m2: main2.py
	s=$$(gdate +%s%3N); \
	python3 main2.py; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt
