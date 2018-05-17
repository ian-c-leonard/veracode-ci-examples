FROM maven:3-jdk-10-slim

RUN apt-get update
RUN apt-get install -y git jq

RUN mkdir /veracode

RUN curl 'http://search.maven.org/solrsearch/select?q=g:%22com.veracode.vosp.api.wrappers%22&rows=20&wt=json' | jq '.["response"]["docs"][0].latestVersion' > /veracode/wrapper-version

RUN VARIABLE=$(cat /veracode/wrapper-version); curl 'https://repo1.maven.org/maven2/com/veracode/vosp/api/wrappers/vosp-api-wrappers-java/${VERACODE_WRAPPER_VERSION}/vosp-api-wrappers-java-${VERACODE_WRAPPER_VERSION}.jar' > /veracode/veracode-wrapper.jar

RUN git clone https://github.com/ctcampbell/veracode-ci-examples /veracode/veracode-ci-examples
RUN chmod +x /veracode/veracode-ci-examples/uploadandscan.sh
