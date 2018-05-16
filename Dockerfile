FROM openjdk:10-jdk

RUN apt-get update
RUN apt-get install -y wget git maven

RUN git clone https://github.com/ctcampbell/veracode-ci-examples /veracode/veracode-ci-examples
RUN chmod +x /veracode/veracode-ci-examples/uploadandscan.sh
