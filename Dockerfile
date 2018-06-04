# Set the base image
FROM ubuntu
# Dockerfile author / maintainer
MAINTAINER drewgwallace

RUN apt-get update && apt-get install -y squid

# Expose default port
EXPOSE 3128

COPY squid.conf /etc/squid/squid.conf

CMD service squid start && tail -F /var/log/squid/access.log
