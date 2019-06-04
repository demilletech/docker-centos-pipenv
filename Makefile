all: build push
test: build pushtest

build:
	docker build -t demilletech/centos-pipenv:local . 

push:
	docker tag demilletech/centos-pipenv:local demilletech/centos-pipenv:latest
	docker push demilletech/centos-pipenv:latest

pushtest:
	docker tag demilletech/centos-pipenv:local demilletech/centos-pipenv:test
	docker push demilletech/centos-pipenv:latest
