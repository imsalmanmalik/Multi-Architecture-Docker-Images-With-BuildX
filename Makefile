login:
	docker login

list-builders:
	docker buildx ls

initialize-builder:
	docker buildx create --name mybuilder
	docker buildx use mybuilder
	docker buildx inspect --bootstrap

build:
	docker buildx build \
		--platform linux/amd64,linux/arm64,linux/arm/v7 \
		-t salmanmalik98/multi-arch-test:latest \
		--push \
		.

CONTAINER_NAME:=multi-arch-test
run:
	docker run -i -d --rm \
		-p 8000:8000 \
		--name $(CONTAINER_NAME) \
		salmanmalik98/multi-arch-test

# ARM_SHA?=e98d51ba627abeba76709b7a1aa3892e5f8c56b0b9b178b747bea9ca6b4bcce0
# run-arm:
# 	docker run -i -d --rm \
# 		-p 8000:8000 \
# 		--name $(CONTAINER_NAME) \
# 		salmanmalik98/multi-arch-test@sha256:$(ARM_SHA)

# stop:
# 	docker stop $(CONTAINER_NAME)

inspect:
	docker buildx imagetools inspect salmanmalik98/multi-arch-test:latest