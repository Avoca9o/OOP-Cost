run:
	for (( i=1; i<=11; i++ )) \
	do \
	s=$$(gdate +%s%3N); \
	dotnet run; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> ../output.txt; \
	done;
