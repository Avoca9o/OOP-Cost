run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.py
	for (( i=1; i<=11; i++ )) \
	do \
	python3 main.py; \
	done

m2: main2.py
	for (( i=1; i<=11; i++ )) \
	do \
	python3 main2.py; \
	done
