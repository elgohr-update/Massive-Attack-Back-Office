FROM openjdk:11-jre-slim

ADD ./target/*.jar app.jar
ADD ./glowroot .


ENTRYPOINT ["java","-javaagent:glowroot/glowroot.jar","-jar","app.jar"]
