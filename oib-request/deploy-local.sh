#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/

mvn clean
mvn -Dmaven.test.skip=true install

/usr/local/Cellar/tomcat/7.0.42/libexec/bin/shutdown.sh
rm -rf /usr/local/Cellar/tomcat/7.0.42/libexec/webapps/infobutton-service
cp /Users/lvr491/Development/Innovation-182/oib-request/oib-request-service/target/infobutton-service.war /usr/local/Cellar/tomcat/7.0.42/libexec/webapps
/usr/local/Cellar/tomcat/7.0.42/libexec/bin/startup.sh 

