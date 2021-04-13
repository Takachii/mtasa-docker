# Luminaire1337/mtasa-docker
### Unofficial MTA:SA Server Docker Image

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

## License
Docker image [luminaire/mtasa-docker](https://hub.docker.com/r/luminaire/mtasa-docker) is released under [MIT License](https://github.com/Luminaire1337/mtasa-docker/blob/main/LICENSE).