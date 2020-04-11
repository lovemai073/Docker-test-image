FROM ubuntu:latest
MAINTAINER Albertcc

#Install Cron
RUN apt-get update && apt-get -y install cron

# Add crontab file in the cron directory
ADD mycron /mycron
ADD run.sh /run.sh
#RUN echo "* * * * * echo \"Hello world\" >> /var/log/cron.log 2>&1" >> mycrontab

# Give execution rights on the cron job
RUN chmod 0644 /mycron
RUN chmod 0644 /run.sh

RUN crontab /mycron

# Run the command on container startup
CMD cron && touch /var/cron.log && tail -f /var/cron.log










