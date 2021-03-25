FROM ubuntu:18.04

LABEL maintainer="Juan Gabriel Balbuena Borba <gabrielbalbuena@gmail.com>"

RUN apt-get update

# system packages
RUN apt-get install -y build-essential libbz2-dev libssl-dev libreadline-dev
RUN apt-get install -y curl git
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y graphviz libgraphviz-dev pkg-config

# python
RUN apt-get install -y python3 python3-pip
ADD requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

RUN echo "alias python=python3" >> ~/.bashrc
RUN echo "alias pip=pip3" >> ~/.bashrc
