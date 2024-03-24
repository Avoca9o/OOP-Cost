run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.js
	for (( i=1; i<=11; i++ )) \
	do \
	node main.js; \
	done

m2: main2.js
	for (( i=1; i<=11; i++ )) \
	do \
	node main2.js; \
	done
