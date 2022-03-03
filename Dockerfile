FROM ubuntu:latest
ARG TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y
RUN apt install -y \
    libsdl2-dev \
    libsdl2-mixer-dev \
    libsdl2-image-dev \
    libsdl2-ttf-dev \
    libsdl2-net-dev \
    libportmidi-dev \
    cmake \
    libopenmpi-dev \
    python3-dev \
    python3-pip \
    zlib1g-dev \
    swig
RUN pip install 'stable-baselines3[extra]' box2d box2d-kengz pyglet