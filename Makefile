DOCKER_IMAGE	=	loopfz/riichi-latex

all: build

build:
	@docker build --tag=${DOCKER_IMAGE}:latest .

release:
	@docker build --tag=${DOCKER_IMAGE}:`cat VERSION` .
