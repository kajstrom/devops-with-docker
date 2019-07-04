#!/bin/bash

REPO_URL=$1
TAG=$2

git clone $REPO_URL build-me

docker login

cd build-me && docker build -t $TAG . && docker push $TAG