#!/usr/bin/env bash

NODE_VERSION=v0.10.25
MONGODB_VERSION=2.4.9

apt-get update -y -q
apt-get install build-essential git curl python-software-properties -y -q

# curl http://npmjs.org/install.sh | sh
add-apt-repository ppa:chris-lea/node.js

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

apt-get update -y -q
apt-get install nodejs mongodb-10gen -y -q

#apt-get install mongodb-10gen=2.2.3
#echo "mongodb-10gen hold" | sudo dpkg --set-selections

#cp /vagrant/tests/acceptance-tests/mongodb.conf /etc/mongodb.conf
service mongodb restart

#wget --quiet http://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}-linux-x64.tar.gz
#tar -zxf node-${NODE_VERSION}-linux-x64.tar.gz
#mv node-${NODE_VERSION}-linux-x64/ /opt/node/
#ln -s /opt/node/bin/node /usr/bin/node
#ln -s /opt/node/bin/npm /usr/bin/npm



#sudo apt-get install python-software-properties python g++ make



# mongodb ui : robomongo , mongovue , umongo , mongo-express

cd /vagrant
npm install
grunt serve