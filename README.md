# DevOPs Cert

this repo is for my DevOps course in Fanaps/Arvan academy

## description

there is an ansible playbook at "playbooks/main.yml"

it does these tasks :

1. hardening server with iptables. opening ports: 80->http , 5000:docker registry, 9011: ssh/ also disabling ssh access with password
2. reintsall docker
3. transfering configurations
4. run all 5 well-defined containers with docker compose
5. transfer backup scripts and applying them
