#Docker Image for Soundtouch Controller

##How-To:
To launch the conatiner automatically at startup unless explicitly stopped use `docker run --name soundtouch_controller -p 5000:5000 --restart unless-stopped soundtouch_controller:latest`