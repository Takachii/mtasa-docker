# Luminaire1337/mtasa-docker
### Unofficial MTA:SA Server Docker Image
![Docker Pulls](https://img.shields.io/docker/pulls/luminaire/mtasa-docker)
![Docker Stars](https://img.shields.io/docker/stars/luminaire/mtasa-docker)

## Installation
#### Pulling image
```bash
# Pull image directly from Docker Hub
docker pull luminaire/mtasa-docker:latest

## OR

# Build it yourself
docker build -t luminaire/mtasa-docker:latest https://github.com/Luminaire1337/mtasa-docker.git
```
#### Running image
```bash
docker run -it \
	-p 22003:22003 \
	-p 22005:22005 \
	-p 22126:22126 \
	-d luminaire/mtasa-docker:latest
```
#### Running image with docker-compose
```yml
version: "3"
   
services:
  mtasa:
    image: luminaire/mtasa-docker:latest
    container_name: mtasa
    restart: always
    stdin_open: true
    tty: true
    volumes:
        - "./config:/src/shared-config"
        - "./modules:/src/shared-modules"
        - "./resources:/src/shared-resources"
        - "./http-cache:/src/shared-http-cache"
    ports:
        - "22003:22003/udp"
        - "22005:22005/tcp"
        - "22126:22126/udp"
```

## License
Docker image [luminaire/mtasa-docker](https://hub.docker.com/r/luminaire/mtasa-docker) is released under [MIT License](https://github.com/Luminaire1337/mtasa-docker/blob/main/LICENSE).