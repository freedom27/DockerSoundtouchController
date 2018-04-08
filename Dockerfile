FROM ubuntu:latest
MAINTAINER Stefano Vettor "freedom2099@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential git
COPY . /app
WORKDIR /app
RUN git clone https://github.com/freedom27/libsoundtouch.git
WORKDIR /app/libsoundtouch
RUN python3 setup.py install
WORKDIR /app
RUN git clone https://github.com/freedom27/SoundtouchController.git
RUN mv soundtouch.ini /app/SoundtouchController/soundtouch.ini
WORKDIR /app/SoundtouchController
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["server.py"]
