# ------------------------------------------------------------------------------------------------
#JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=$VCAP_APP_PORT" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run
JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=55555" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run

echo **************************************
wget http://localhost:55555/examples
echo **************************************

until [ "`curl --silent --show-error --connect-timeout 1 -I http://localhost:55555 | grep 'It works'`" != "" ];
do
  sleep 5
done
echo "Tomcat has been started.... $(netstat -tulpen)"

# ------------------------------------------------------------------------------------------------
