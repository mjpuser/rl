FROM ubuntu:latest
RUN apt update -y && apt install -y python3 python3-pip
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y \
    libsdl2-dev \
    libsdl2-mixer-dev \
    libsdl2-image-dev \
    libsdl2-ttf-dev \
    libsdl2-net-dev \
    libportmidi-dev
RUN pip3 install gym pygame