# stable official Java runtime base image
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN cd src && javac src/Main.java

CMD ["java", "-cp", "src", "Main"]
