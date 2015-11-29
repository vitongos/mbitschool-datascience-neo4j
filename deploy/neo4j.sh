#!/bin/bash

cd ~/Downloads
wget -O neo4j.tar.gz http://neo4j.com/artifact.php?name=neo4j-community-2.3.1-unix.tar.gz
tar zxf neo4j.tar.gz
sudo mv /opt/neo4j /opt/neo4jold
sudo mv neo4j-community-2.3.1/ /opt/neo4j/
sudo rm -rf /usr/bin/neo4j
sudo ln -s /opt/neo4j/bin/neo4j /usr/bin/neo4j
sudo sed -i -r 's/dbms\.security\.auth_enabled=true/dbms\.security\.auth_enabled=false/' /opt/neo4j/conf/neo4j-server.properties
neo4j start






