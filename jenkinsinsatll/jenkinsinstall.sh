
#JENKINS URL http://18.140.246.208:8080/
# JENKINS INSTALLATION AND CONFIGURATION SERVER
#Installing JAVA on JENKINS SERVER
sudo yum update -y
sudo yum install java-1.8.0-openjdk-devel


#Installing Jenkins APPLICATION
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y


#CONFIGURE JENKINS SERVER 
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#Install Ansible on Jenkins
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install ansible

#Install git client on Jenkins server
sudo yum install git


# CREATE REQUIRED DIR ON JENKINS SERVER FOR ANSIBLE
cd /home/ec2-user
mkdir ansible
cd ansible/
mkdir .keys
chmod 400 demo.pem














