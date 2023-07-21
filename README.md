# Readme

## Build with Maven

Build the project from the root folder with 

```shell
mvn clean package
```
which will compile, test & package your multimodule project.

Alternatively, you can run only tests with

```shell
mvn clean test
```
The JAR and WAR packages will reside in the `target/` folders for each project.

### JAR

You can run the JAR file from the root folder of the project with this sample command

```shell
java -jar admin/target/admin-0.0.1-SNAPSHOT-jar-with-dependencies.jar "Hello there!"
```

The output should be

```
You say [Hello there!], I say Hello from admin! Hello from services! Hello from utils!
```

### WAR

Package the WAR file with

```shell
mvn clean package
```

Build a Docker Tomcat image using [provided Dockerfile](Dockerfile). Be sure to specify the correct path to COPY command so that it includes the generated WAR file.

```shell
docker build -t mywebapp .
```

Run the container

```shell
docker run --rm -p 80:8080 mywebapp
```

#### Access the servlet

To check that the servlet is up and running, go to [localhost/web](http://localhost:80/web/).

There are multiple ways of configuring the endpoint name. One of the ways is in [pom](/web/pom.xml) file, within the `warName` tag.

## Gradle

Build the project with Gradle wrapper or with installed Gradle 

```shell
gradle clean build
```

Alternatively, you can run only tests with

```shell
gradle clean test
```

The JAR and WAR packages will reside in the `build/libs/` folders for each project.

### JAR

You can run the JAR file from the root folder of the project with this sample command

```shell
java -jar admin/build/libs/admin-0.0.1-SNAPSHOT.jar "Hello there, Gradle!"
```

The output should be

```
You say [Hello there, Gradle!], I say Hello from admin! Hello from services! Hello from utils!
```

### WAR

Package the WAR file with

```shell
gradle clean build
```

Build a Docker Tomcat image using [provided Dockerfile](Dockerfile). Be sure to specify the correct path to COPY command so that it includes the generated WAR file.


```shell
docker build -t mywebapp .
```

Run the container

```shell
docker run --rm -p 80:8080 mywebapp
```

#### Access the servlet

To check that the servlet is up and running, go to [localhost/web](http://localhost:80/web/).

There are multiple ways of configuring the endpoint name. One of the ways is in [build.gradle](web/build.gradle) file, within the `war.archiveName` property.
