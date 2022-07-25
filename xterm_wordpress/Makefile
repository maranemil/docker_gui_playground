# Define required macros here
SHELL = /bin/sh

build:
	@echo "Build Container"
	docker build -t wordpress_test_em .

run:
	@echo "Run Container" 
	docker run -ti --rm wordpress_test_em
   	

stop:
	@echo "Stop Container"
	docker ps -a -q  --filter ancestor=wordpress_test_em