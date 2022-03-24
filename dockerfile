

FROM openjdk:8
EXPOSE 8080
ADD target/app-maven-1.0-SNAPSHOT.jar app-maven-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app-maven-1.0-SNAPSHOT.jar"]