FROM openjdk:8-jdk-buster
RUN mkdir -p /home/jboss/
COPY HelloWorld.java /home/jboss/HelloWorld.java
RUN javac /home/jboss/HelloWorld.java
CMD ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=0.0.0.0:11111"]