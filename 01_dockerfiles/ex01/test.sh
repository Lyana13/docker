docker build -t ts3server .
docker run -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ts3server
