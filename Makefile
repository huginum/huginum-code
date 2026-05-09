IMAGE ?= ghcr.io/huginum/huginum-code-bun:dev
PROJECT ?= .

build:
	docker build -t $(IMAGE) templates/bun

push:
	docker push $(IMAGE)

run:
	sbx run --template $(IMAGE) --kit ./kits/huginum --branch auto shell $(PROJECT)
