#!/bin/bash
#docker image rmi jariyal21/docker:v1
image=mukul
TAG_1=
TAG_2=
docker image build -t ${image} .
docker tag ${image} ${TAG_1}
docker tag ${TAG_1} ${TAG_2}
docker push ${TAG_1}
docker push ${TAG_2}
docker image rmi ${TAG_1} ${TAG_2}