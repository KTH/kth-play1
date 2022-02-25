FROM openjdk:alpine-slim AS slim

RUN apt-get update && apt-get -y install wget python unzip
RUN wget --quiet https://downloads.typesafe.com/play/1.5.3/play-1.5.3.zip && \
    unzip play-1.5.3.zip && rm play-1.5.3.zip && \
    mv play-1.5.3 play && \
    rm -r play/documentation && \
    rm -r play/samples-and-tests && \
    rm -r play/python

RUN echo "IMAGE INFORMATION" > KTH_PLAY1
RUN echo "Build date: `date`" >> KTH_PLAY1
RUN echo "Play: 1.5.3" >> KTH_PLAY1
RUN echo "Java:" >> KTH_PLAY1
RUN echo "`java -version 2>&1`" >> KTH_PLAY1
RUN echo "Alpine version: `cat /etc/debian_version `" >> KTH_PLAY1

RUN cat KTH_PLAY1
