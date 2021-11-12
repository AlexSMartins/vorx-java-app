#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u alexsmartins -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG alexsmartins/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push alexsmartins/$IMAGE:$BUILD_TAG
