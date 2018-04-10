# Docker Image for Soundtouch Controller

## How-To:
### Configure:
This container can be run on either an x86 machine or on a Raspberry Pi. 
#### Raspberry Pi config:
To run it on a Raspberry Pi do the following:
1. rename `Dockerfile` into something else
2. rename `Dockerfile_rpi` into simply `Dockerfile`
3. build the container.

### Build:
To build the container use `docker build -t soundtouch_controller:latest .`

### Launch:
To launch the conatiner automatically at startup unless explicitly stopped use `docker run --name soundtouch_controller -p 5000:5000 --restart unless-stopped soundtouch_controller:latest`