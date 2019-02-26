# Pull base image 
From tomcat:8-jre8 
# Maintainer
MAINTAINER "sureshkumarreddy498@gmail.com" 
# copy war file on to container 
COPY target/*.war /opt/apache-tomcat-8.5.38/webapps
EXPOSE 8080
