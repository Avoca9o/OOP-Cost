run:
	s=$$(gdate +%s%3N); \
	dotnet run; \
	e=$$(gdate +%s%3N); \
	echo $$(($$e-$$s)) >> ../output.txt
