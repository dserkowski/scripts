#!/bin/sh

$CATALINA_HOME/bin/shutdown.sh
ps aux | grep apache-tomcat | awk '{print $2}' | xargs kill -9
$CATALINA_HOME/bin/catalina.sh jpda start
