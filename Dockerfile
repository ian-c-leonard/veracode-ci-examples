FROM openjdk:9-jre-slim

ENV VERACODE_WRAPPER_VERSION 18.4.5.1

RUN apt-get update
RUN apt-get install -y wget git

RUN wget -O veracode-wrapper.jar "https://repo1.maven.org/maven2/com/veracode/vosp/api/wrappers/vosp-api-wrappers-java/$VERACODE_WRAPPER_VERSION/vosp-api-wrappers-java-$VERACODE_WRAPPER_VERSION.jar"
