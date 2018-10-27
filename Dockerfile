FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ADD ./target/basicspring-0.0.1-SNAPSHOT.jar basicspring.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ./basicspring.jar --spring.config.location=classpath:application.properties,classpath:application.yml,/tmp/
