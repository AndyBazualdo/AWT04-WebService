FROM openjdk:11.0.4
CMD apt-get update
COPY . /AWT04-WebService
WORKDIR /AWT04-WebService
RUN ./gradlew build
ENTRYPOINT ["java","-jar","/AWT04-WebService/build/libs/WebService-1.0-SNAPSHOT.jar"]
