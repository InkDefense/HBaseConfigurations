echo '----------'
echo '----- Installing HBase Standalone -----'
echo '----------'

# Configure JAVA_HOME
# It's not listed in the stand-alone configuration guide from Apache, but HBase uses Java
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/' >> .bashrc

# Download Hadoop from Apache and unpack it
cd ~
wget http://ftp.wayne.edu/apache/hbase/2.1.1/hbase-2.1.1-bin.tar.gz 
tar -xzf hbase-2.1.1-bin.tar.gz

# Configure core-site.xml
sed -i 's%<configuration>%<?xml version="1.0"?>\n<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>\n<configuration>\n\t<property>\n\t\t<name>hbase.rootdir</name>\n\t\t<value>file:///DIRECTORY/hbase</value>\n\t</property>\n\t<property>\n\t\t<name>hbase.zookeeper.property.dataDir</name>\n\t\t<value>/DIRECTORY/zookeeper</value>\n\t</property>\n</configuration>' core-site.xml

echo '----------'
echo '----- Run commmand ./bashrc to implement JAVA_HOME -----'
echo '----------'
echo '----- Connect to HBase through shell -----'
echo '----- Run command ./bin/hbase shell -----'
echo '----------'
echo '----------'
echo '----- Terminate HBase with command -----'
echo '----- ./bin/stop-hbase.sh -----'
echo '----------'