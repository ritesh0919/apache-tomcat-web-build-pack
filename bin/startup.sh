
# ------------------------------------------------------------------------------------------------
#JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=$VCAP_APP_PORT" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run

exec JAVA_HOME=$HOME/jdk1.8.0_25/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=77777" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run 

echo **************************************
wget http://localhost:77777/examples
echo **************************************
