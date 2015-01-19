# ------------------------------------------------------------------------------------------------
JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS=\"-Djava.io.tmpdir=$TMPDIR -Dhttp.port=$VCAP_APP_PORT\" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run
echo "Tomcat has been started.... $(netstat -tulpen)"

# ------------------------------------------------------------------------------------------------
