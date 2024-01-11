sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo systemctl start httpd
sudo chkconfig httpd on
sudo systemctl enable httpd
