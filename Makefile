APP_IMAGE=app/dyd_groovy
BUILD_IMAGE=dev/tinycore7.0-x86_64-groovy2.4
BUILD_VOLUMES=-v ${PWD}:/data -v ${HOME}/.gradle:/root/.gradle -v ${HOME}/.m2:/root/.m2

build-app:
	docker run -it ${BUILD_VOLUMES} ${BUILD_IMAGE} ./gradlew installShadow

docker-image: build-app
	docker build -t ${APP_IMAGE} -f docker/Dockerfile .

docker-run: docker-image
	docker run -it -p 4567:4567 ${APP_IMAGE}

