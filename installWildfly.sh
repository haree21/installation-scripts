#!/bin/bash      
#title           : Install Wildfly server
#description     : Execute this script as root user
#author		       : Mthun Technologies
#date            : 08112012
#version         : 1.0    
#usage		       : sh wildflyInstall.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226 | devopstrainingblr@gmail.com


#Wildfly Installation
cd /opt
wget http://download.jboss.org/wildfly/14.0.1.Final/wildfly-14.0.1.Final.zip
unzip wildfly-14.0.1.Final.zip

#cd /opt/wildfly-14.0.1.Final/standalone/configuration/
#############################################################################################

## Manual Steps
Find and replace 127.0.0.1 with your Private IP address in standalone.xml like below

vim /opt/wildfly-13.0.0.Final/standalone/configuration/standalone.xml
<wsdl-host>${jboss.bind.address:172.31.24.62}</wsdl-host>
<inet-address value="${jboss.bind.address.management:172.31.24.62}"/>
<inet-address value="${jboss.bind.address:172.31.24.62}"/>

sh /opt/wildfly-14.0.1.Final/bin/add-user.sh
sh /opt/wildfly-14.0.1.Final/bin/standalone.sh

#./standalone.sh -b=private ip address -bmanagement=private ip address
#./standalone.sh -b=172.31.27.29 -bmanagement=172.31.27.29
#############################################################################################

##Once it started successfully, Open the broeser and access the Wildfly server as follows.

#http://<<Host Name>>:<<PortNumber>>
