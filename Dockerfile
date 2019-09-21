FROM ubuntu
CMD apt-get update
RUN apt-get update && apt-get install -y default-jdk
ENTRYPOINT /bin/bash
EXPOSE 8080
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
COPY . /AWT04-WebService
