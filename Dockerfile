FROM maven:3.8-jdk-8

RUN mkdir -p bootcamp

COPY . bootcamp

WORKDIR /bootcamp

RUN echo "Working directory: $(pwd)"

RUN ["mvn", "clean", "install"]

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/bootcamp/target/myspringproject-1.0.jar"]
