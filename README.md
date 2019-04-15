# run in Docker
sudo docker build . --tag basicspring
sudo docker run -p 8080:8080 --rm -d  basicspring 
curl http://localhost:8080/actuator/health
curl http://localhost:8080/actuator/env
curl http://localhost:8080/actuator/info
history |grep docker
sudo docker run -p 8080:8080 --rm -v /path/to/springconfig:/tmp basicspring
