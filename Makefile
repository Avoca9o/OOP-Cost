run:
	cd c++ && make run; \
	cd ../c# && make run; \
	cd ../go && make run; \
	cd ../java && make run; \
	cd ../python3 && make run; \
	cd ../javascript && make run; \
	cd ../php && make run; \
	cd ../kotlin && make run; \
	cd ../rust && make run; \
	cd ../ruby && make run; \
	cd ../fortran && make run; \
	cd ../delphi && make run; \
	cd ../ && python3 parse.py
