NAME = moekiwisama/ideaready
VERSION = 0.0.1-2021.2.1

.PHONY: build start push

build:
	docker build -t ${NAME}:${VERSION} --build-arg SHELL_RC=${SHELL_RC} .

tag-latest: build
	docker tag ${NAME}:${VERSION} ${NAME}:latest

start: build
	docker run -it --rm ${NAME}:${VERSION}

push: build tag-latest
	docker push ${NAME}:${VERSION}; docker push ${NAME}:latest
