#!/bin/sh
JAVA_OPTS="$JAVA_OPTS -Ddrools.platform.conf=/home/guvnor/myconfig $DROOLS_CATALINA_OPTS "
export JAVA_OPTS   

CATALINA_OPTS=" -Xms1536m -Xmx6536m -XX:NewSize=256m -XX:MaxNewSize=256m -XX:PermSize=256m -XX:MaxPermSize=556m -XX:+DisableExplicitGC -Djava.security.auth.login.config=/home/tomcat7/apache-tomcat-7.0/conf/jaasConfig"