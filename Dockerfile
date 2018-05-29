# Set the base image
FROM ubuntu
# Dockerfile author / maintainer
MAINTAINER drewgwallace

# Update application repository list and install the Redis server.
RUN apt-get update && apt-get install -y squid

# Expose default port
EXPOSE 3128

CMD service squid start && tail -F /var/log/squid/access.log

COPY squid.conf /etc/squid/squid.conf

#ENTRYPOINT ["/usr/sbin/sh"]
