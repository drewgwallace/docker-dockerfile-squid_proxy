# Docker Dockerfile



## Purpose
  Dockerfile to create a very basic proxy server in Docker.
  
----

## Execution

<pre>
    docker run -p 3128:3128 -dt drewgwallace/squid_proxy:latest
</pre>
### Build yourself with docker compose
<pre>
    git clone https://github.com/drewgwallace/docker-dockerfile-squid_proxy.git
    cd docker-dockerfile-squid_proxy
    docker build -t <b>USERNAME</b>/squid_server .
    docker push <b>USERNAME</b>/squid_server
    <b>(Edit the docker-compose.yml with your repository)</b>
    docker stack deploy -c docker-compose.yml squid_stack --with-registry-auth
</pre>   

### Image on [Docker Hub](https://hub.docker.com/r/drewgwallace/squid_proxy/)

----

## Notes
+ Be sure to edit docker-compose.yml with your repository information.
+ When building if you receive the error:

      [Warning] IPv4 forwarding is disabled. Networking will not work.
      
  + You will need IPv4 forwarding, run this command:

        sudo sysctl -w net.ipv4.ip_forward=1
