.PHONY: build push
PROJECT_NAME:=kubelite
DOCKER_REPO:=jrmanes

build:
	docker build -t $(PROJECT_NAME):latest -t $(DOCKER_REPO)/$(PROJECT_NAME):latest .
push:
	docker push $(DOCKER_REPO)/$(PROJECT_NAME):latest
