# NGINX Server URL http://18.138.22.220/
# INSTALL NGINX SERVER
cd /home/ec2-user
sudo -i
sudo yum install epel-release
sudo yum install nginx
# START/CONFIGURE NGINX SERVER
sudo systemctl -l enable nginx
sudo systemctl -l start nginx
sudo amazon-linux-extras install epel
/bin/systemctl restart nginx