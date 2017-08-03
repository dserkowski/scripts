#!/bin/sh

$CATALINA_HOME/bin/shutdown.sh
sleep 1
ps aux | grep apache-tomcat | awk '{print $2}' | xargs kill -9
sleep 1
$CATALINA_HOME/bin/catalina.sh jpda start
