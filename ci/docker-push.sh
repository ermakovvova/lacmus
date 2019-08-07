#!/bin/bash

set -e
set -x

docker login -u $SECRET_DOCKER_LOGIN -p $SECRET_DOCKER_PASSWORD
docker push $TRAVIS_REPO_SLUG:travis-$TRAVIS_BUILD_NUMBER
docker tag $TRAVIS_REPO_SLUG:travis-$TRAVIS_BUILD_NUMBER $TRAVIS_REPO_SLUG:$TRAVIS_BRANCH
docker push $TRAVIS_REPO_SLUG:$TRAVIS_BRANCH
