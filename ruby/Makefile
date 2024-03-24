run: 
	rm -f output.txt
	echo kIncomplete >> output.txt
	make m
	make m2

m: main.rb
	for (( i=1; i<=11; i++ )) \
	do \
	ruby main.rb; \
	done

m2: main2.rb
	for (( i=1; i<=11; i++ )) \
	do \
	ruby main2.rb; \
	done
