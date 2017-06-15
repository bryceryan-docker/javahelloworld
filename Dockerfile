FROM java:7

COPY src /home/ubuntu/javahelloworld/src
WORKDIR /home/ubuntu/javahelloworld
RUN mkdir bin
RUN  javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
