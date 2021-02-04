
FROM maven:3.6.0-jdk-8-alpine
#coping src of your framework
COPY src /home/SeleniumTestFramework/src
#coping pom file of your framework
COPY pom.xml /home/SeleniumTestFramework
#coping testing.xml file of your framework
#COPY testing.xml /home/SeleniumTestFramework
COPY libs /home/SeleniumTestFramework/libs
#running actual command

RUN mvn -f /home/SeleniumTestFramework/pom.xml clean test -DskipTests=true

#ADD target/lti-demo-docker.jar /home/SeleniumTestFramework/lti-demo-docker.jar

#ENTRYPOINT ["java","-jar","/home/SeleniumTestFramework/lti-demo-docker.jar"]