run:
	rm -f output.txt; \
	echo kComplete >> output.txt
	cd main && dotnet build -c Debug; \
	make run && rm -r bin obj; \
	cd ../main2 && dotnet build -c Debug; \
	make run && rm -r bin obj; \
	cd ../main3 && dotnet build -c Debug; \
	make run && rm -r bin obj