#!/bin/sh
docker build --rm -f AMPDockerFile -t cubecoders/ampbase .
docker build --rm -f AMPDockerFileJava -t cubecoders/ampbase:java .
docker build --rm -f AMPDockerFileNode -t cubecoders/ampbase:node .
docker build --rm -f AMPDockerFileXvfb -t cubecoders/ampbase:xvfb .
docker build --rm -f AMPDockerFilePython3 -t cubecoders/ampbase:python3 .
docker build --rm -f AMPDockerFileWine -t cubecoders/ampbase:wine .
docker build --rm -f AMPDockerFileMono -t cubecoders/ampbase:mono .

#docker push cubecoders/ampbase
