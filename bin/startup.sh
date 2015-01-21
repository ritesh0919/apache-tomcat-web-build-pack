
# ------------------------------------------------------------------------------------------------
#JAVA_HOME=$HOME/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=$VCAP_APP_PORT" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run
nohub sh JAVA_HOME=$HOME/jdk1.8.0_25/jdk1.8.0_25 JAVA_OPTS="-Djava.io.tmpdir=$TMPDIR -Dhttp.port=77777" $HOME/apache-tomcat-7.0.57/bin/catalina.sh run &



#until [ "`curl --silent --show-error --connect-timeout 1 -I http://localhost:55555 | grep 'It works'`" != "" ];
#do
  #sleep 55
#done
#echo "Tomcat has been started.... $(netstat -tulpen)"
wait
# ------------------------------------------------------------------------------------------------
echo **************************************
wget http://localhost:77777/examples
echo **************************************
