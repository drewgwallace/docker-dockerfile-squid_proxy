# Ansible Playbook



## Purpose
  Dockerfile to create a very basic proxy server in Docker.
  
----

## Execution

### docker hub https://hub.docker.com/u/drewgwallace/
<pre>
    docker run -p 3128:3128 -dt drewgwallace/squid_proxy:squid_server
</pre>
### Build yourself with docker compose
<pre>
    git clone https://github.com/drewgwallace/docker-squid_proxy.git
    cd docker-squid_proxy
    docker build -t <b>USERNAME/RESPOSITORY</b>:squid_server .
    docker push <b>USERNAME/RESPOSITORY</b>:squid_server
    <Edit the docker-compose.yml with your repository>
    docker stack deploy -c docker-compose.yml squid_stack --with-registry-auth
</pre>   


----

## Notes
+ Be sure to edit docker-compose.yml with your repository information.
+ When building if you receive the error:

      [Warning] IPv4 forwarding is disabled. Networking will not work.
      
++ You will need IPv4 forwarding, run this command:

      sudo sysctl -w net.ipv4.ip_forward=1
