FROM amazonlinux:latest
MAINTAINER Albertcc

# Install cron
RUN yum update -y

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh