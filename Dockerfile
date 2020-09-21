FROM tomcat:7-alpine
MAINTAINER VINAY KUMMI
#COPY ./target/*.war /usr/local/tomcat/webapps/
COPY index.html /usr/local/tomcat/webapps/
COPY app.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
