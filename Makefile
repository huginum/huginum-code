IMAGE ?= ghcr.io/huginum/huginum-code-bun:dev
PROJECT ?= .

build:
	docker build -t $(IMAGE) templates/bun

push:
	docker push $(IMAGE)

run:
	sbx run --kit ./kits/huginum --branch auto huginum-code $(PROJECT)
