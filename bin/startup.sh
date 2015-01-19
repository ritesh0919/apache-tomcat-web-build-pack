# ------------------------------------------------------------------------------------------------
#JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=$VCAP_APP_PORT" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run
JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=8080" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run

until [ "`curl --silent --show-error --connect-timeout 1 -I http://localhost:8080 | grep 'It works'`" != "" ];
do
  sleep 5
done
echo "Tomcat has been started.... $(netstat -tulpen)"

# ------------------------------------------------------------------------------------------------
