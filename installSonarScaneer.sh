echo 'SonarScanner Installation started.'
echo '----------------------------------'
sudo yum install wget zip unzip -y
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip -O sonar-scanner.zip
sudo unzip sonar-scanner.zip
echo "export SONAR_SCANNER_HOME=/opt/sonar-scanner-3.3.0.1492-linux" >> ~/.bash_profile
#To set the varibales in System wide environment , use below file
#echo "export SONAR_SCANNER_HOME=/opt/sonar-scanner-3.3.0.1492-linux" >> /etc/profile
sudo echo 'export PATH=$PATH:$SONAR_SCANNER_HOME/bin' >> ~/.bash_profile
sudo source ~/.bash_profile

sonar-scanner -v
echo 'SonarScanner Installation done.'
echo '-------------------------------'