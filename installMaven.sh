#!/bin/bash      
#title           : Install Maven Build Tool
#description     : Execute this script as root user
#author		     : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		     : sh mavenInstallation.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com


echo 'Maven Installation started.'
echo '---------------------------'
sudo yum install wget zip unzip -y
cd /opt
wget http://us.mirrors.quenda.co/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.zip -O apache-maven-3.6.0.zip
unzip apache-maven-3.6.0.zip
echo "export M2_HOME=/opt/apache-maven-3.6.0" >> ~/.bash_profile
#To set the varibales in System wide environment , use below file
#echo "export M2_HOME=/opt/apache-maven-3.6.0" >> /etc/profile

echo 'export PATH=$PATH:$M2_HOME/bin' >> ~/.bash_profile
source ~/.bash_profile

echo 'Maven Installation done.'
echo '-----------------------'

mvn -version