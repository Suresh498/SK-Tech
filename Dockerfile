# Pull base image 
From tomcat:8-jre8 
# Maintainer
MAINTAINER "sureshkumarreddy498@gmail.com" 
# copy war file on to container 
COPY ./gamutkart.war /usr/local/tomcat/webapps
