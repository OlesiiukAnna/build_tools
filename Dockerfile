FROM tomcat:9-jre8

# copy WAR generated with Maven
COPY web/target/*.war /usr/local/tomcat/webapps/

# copy WAR generated with Gradle
#COPY web/build/libs/*.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
