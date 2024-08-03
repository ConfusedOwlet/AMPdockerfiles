#!/bin/sh
docker build --rm -f AMPDockerFile -t confusedowlet/ampdocker .
docker build --rm -f AMPDockerFileJava -t confusedowlet/ampdocker:java .
docker build --rm -f AMPDockerFileNode -t confusedowlet/ampdocker:node .
docker build --rm -f AMPDockerFileXvfb -t confusedowlet/ampdocker:xvfb .
docker build --rm -f AMPDockerFilePython3 -t confusedowlet/ampdocker:python3 .
docker build --rm -f AMPDockerFileWine -t confusedowlet/ampdocker:wine .
docker build --rm -f AMPDockerFileWineStable -t confusedowlet/ampdocker:winestable .
docker build --rm -f AMPDockerFileMono -t confusedowlet/ampdocker:mono .
docker build --rm -f AMPDockerFileProtontricks -t confusedowlet/ampdocker:Protontricks .

#docker push -a confusedowlet/ampdocker
