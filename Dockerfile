FROM tomcat:9-jdk8
COPY target/htech-finance-app.war /usr/local/tomcat/webapps/
