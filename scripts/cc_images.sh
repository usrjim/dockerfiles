#!/bin/sh

docker rmi $( docker images | grep '<none>' | tr -s ' ' | cut -d ' ' -f 3)
