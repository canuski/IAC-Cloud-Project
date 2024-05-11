#!/bin/bash


CONTAINER_NAME="docker-virus_scanner-1"


docker exec -it $CONTAINER_NAME freshclam
