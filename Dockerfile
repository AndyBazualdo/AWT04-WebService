FROM ubuntu
MAINTAINER Andy Bazualdo (Andy.Bazualdo@fundacion-jala.org)
#RUN apt install openjdk-8-jre-headless
CMD cp -R . /AWT04-WebService

EXPOSE 8080
