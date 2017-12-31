REPO := "kklipsch/gout"

ifdef TRAVIS_TAG
	TAG := $(TRAVIS_TAG)
else
	TAG := "latest"
endif

publish: build
  	docker login -u $(DOCKER_USER) -p $(DOCKER_PASS)
   	docker build -f Dockerfile -t $(REPO):$(TAG) .
   	docker push $(REPO)

build:
	CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' .
