# run in Docker

```
sudo docker build . --tag testspring
sudo docker run -p 8080:8080 --rm -d  testspring 
# or
sudo docker run -p 8080:8080 --rm -v /path/to/springconfig:/usr/local/lib/config/ testspring
```

# run from dockerhub

`docker run -p 8080:8080 ramgop/testspring`

or

sudo docker run -p 8080:8080 --rm -v /path/to/springconfig:/usr/local/lib/config/ ramgop/testspring

# run locally

mvn package

java -jar target/basicspring-0.0.1-SNAPSHOT.jar

# See it running

curl http://localhost:8080

curl http://localhost:8080/actuator/health

curl http://localhost:8080/actuator/env

curl http://localhost:8080/actuator/info
