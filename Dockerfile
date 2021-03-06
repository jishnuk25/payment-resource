FROM tomcat:8.0-alpine

LABEL maintainer="jishnu.k"

ADD target/*.war /usr/local/tomcat/webapps/

ADD tomcat/context.xml /usr/local/tomcat/conf/

EXPOSE 8080

CMD [ "catalina.sh", "run" ]