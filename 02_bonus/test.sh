docker-machine create Char
docker-machine start Char
eval $(docker-machine env Char)
docker swarm init --advertise-addr $(docker-machine ip Char)
docker stack deploy -c docker-compose.yml wp

