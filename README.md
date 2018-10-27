# run in Docker
sudo docker build . --tag basicspring
sudo docker run -p 8080:8080 --rm -d  basicspring 
history |grep docker
sudo docker run -p 8080:8080 --rm -v /path/to/springconfig:/tmp basicspring
