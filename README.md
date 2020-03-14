# ash
this is my demo project.
Step 1:Explain about Jenkins installation steps
#Installing JAVA on JENKINS SERVER
sudo yum update -y
sudo yum install java-1.8.0-openjdk-devel

#Installing Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y

#CONFIGURE JENKINS 
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#Install Ansible on Jenkins Server
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y install ansible

#Install git client on Jenkins server
sudo yum install git -y

Step2 :How to do Jenkins and git Repo integration
Once your Jenkins is accessible via browser install "GitHub Integration Plugin" and configure Webhook.

Step 3:Building a Ansible Playbook

Step4:Creating configuring  Jenkins Job
1. Create new job in jekins as freestyle
2. Confgiure the jenkins job with following
   a. git repo url
   b. specify branched to build
3. Under Build Triggers
  a. GitHub hook trigger for GITScm polling
4. Build Environment
  a. Delete workspace before build starts

5. under Build step section choose execute shell add below code to 
   ---
echo "Deployment Starting with Ansible"
pwd
cd ansible 
pwd
echo "[nginx-servers]" >> hosts
echo "$ip ansible_ssh_user=$ssh_user ansible_ssh_private_key_file=$pem_key_path" >> hosts
cat hosts
ssh-keyscan -H $ip >> ~/.ssh/known_hosts
ansible-playbook -i hosts nginx-demo.yml
echo "Deployment Completed"
rm hosts
   ---
Step 5:Demo 

Step 6: Draw a diagram 

