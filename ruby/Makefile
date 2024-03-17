run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.rb
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	ruby main.rb; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done

m2: main2.rb
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	ruby main2.rb; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> output.txt; \
	done
