run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.js
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	node main.js; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done

m2: main2.js
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	node main2.js; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done
