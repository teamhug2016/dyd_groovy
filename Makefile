APP_IMAGE=app/dyd_groovy
BUILD_IMAGE=tinycore7.0-x86_64-groovy2.4

build:
	docker run -it ${BUILD_IMAGE}./gradlew installShadow1

docker-image: build
	docker build -t ${APP_IMAGE} -f docker/Dockerfile .

docker-run: docker-image
	docker run -it -p 4567:4567 ${APP_IMAGE}

