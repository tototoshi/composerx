pwd := $(shell pwd)

docker_run := docker run --rm -v $(pwd):$(pwd) -w $(pwd) php:latest
docker_run_it := docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) php:latest
composer := $(docker_run) php composer.phar

.PHONY:\
	bash \
	test

bash:
	$(docker_run_it) bash

test:
	./test.sh

ci-test:
	$(docker_run) ./test.sh
