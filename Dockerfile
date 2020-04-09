FROM amazonlinux:latest
MAINTAINER Albertcc

# Install cron
RUN yum update -y 
RUN amazon-linux-extras install nginx1.12
#RUN yum install -y nginx

# Add cron file
ADD mycron /etc/cron.d/mycron
ADD run.sh /run.sh
 
RUN chmod +x /etc/cron.d/mycron /run.sh

# run the nginx
CMD ["nginx", "-g", "daemon off;"]


