#                                                                                                                                                                                                                                      
# Build stage                                                                                                                                                                                                                          
#                                                                                                                                                                                                                                      
FROM maven:3.6.0-jdk-11-slim AS build                                                                                                                                                                                                  
COPY src /home/app/src                                                                                                                                                                                                                 
COPY pom.xml /home/app                                                                                                                                                                                                                 
RUN mvn -f /home/app/pom.xml clean package                                                                                                                                                                                             
                                                                                                                                                                                                                                       
#                                                                                                                                                                                                                                      
# Package stage                                                                                                                                                                                                                        
#                                                                                                                                                                                                                                      
FROM openjdk:11-jre-slim                                                                                                                                                                                                               
COPY --from=build /home/app/target/basicspring-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar                                                                                                                                              
EXPOSE 8080                                                                                                                                                                                                                            
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]   


#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#EXPOSE 8080
#ADD ./target/basicspring-0.0.1-SNAPSHOT.jar basicspring.jar
#ENV JAVA_OPTS=""
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ./basicspring.jar --spring.config.location=classpath:application.properties,classpath:application.yml,/tmp/
