FROM openjdk:9-jre-slim

RUN apt-get update
RUN apt-get install -y wget git

RUN git clone https://github.com/ctcampbell/veracode-ci-examples /veracode/veracode-ci-examples
