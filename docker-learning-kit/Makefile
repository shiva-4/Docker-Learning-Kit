# Simple shortcuts for demoing examples
SHELL := /bin/bash

IMAGE ?= hello-docker
PORT  ?= 8000

.PHONY: build run stop logs shell prune

build:
	docker build -t $(IMAGE) ./examples/hello-docker

run:
	docker run --rm -p $(PORT):8000 --name $(IMAGE) $(IMAGE)

stop:
	-@docker stop $(IMAGE) 2>/dev/null || true

logs:
	docker logs -f $(IMAGE)

shell:
	docker exec -it $(IMAGE) /bin/sh

prune:
	bash ./scripts/prune.sh
