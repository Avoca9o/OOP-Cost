run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.php
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	php main.php; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done;

m2: main2.php
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	php main2.php; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done;
