# multi stage: build and run tomcat application
FROM maven:3.9.9-eclipse-temurin-11 AS build_image
WORKDIR /vprofile-project
COPY . .    
RUN mvn install -DskipTests

FROM tomcat:9-jre11
LABEL "Project"="Vprofile"
LABEL "Author"="Tina"
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build_image vprofile-project/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
