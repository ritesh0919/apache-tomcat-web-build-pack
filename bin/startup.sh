# ------------------------------------------------------------------------------------------------
JAVA_HOME=$HOME/app/jdk1.8.0_25 JAVA_OPTS=\"-Djava.io.tmpdir=$TMPDIR    -XX:OnOutOfMemoryError=$HOME/app/jdk1.8.0_25/bin/killjava.sh -Xmx382293K
    -Xms382293K -XX:PermSize=64M -Xss995K -Dhttp.port=$VCAP_APP_PORT\" $HOME/app/apache-tomcat-7.0.57/bin/catalina.sh run
echo "Tomcat has been started.... $(netstat -tulpen)"

# ------------------------------------------------------------------------------------------------