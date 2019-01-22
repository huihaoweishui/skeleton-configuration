FROM java:8-jre
WORKDIR /app
ADD ./target/configuration.jar configuration.jar
CMD ["nohup","java","-server", "-Xmx200m", "-jar", "/app/configuration.jar","configuration.txt &"]
EXPOSE 8888