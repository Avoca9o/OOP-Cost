run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.php
	for (( i=1; i<=11; i++ )) \
	do \
	php main.php; \
	done;

m2: main2.php
	for (( i=1; i<=11; i++ )) \
	do \
	php main2.php; \
	done;
