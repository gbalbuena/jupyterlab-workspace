FROM jupyter/datascience-notebook

LABEL maintainer="Juan Gabriel Balbuena Borba <gabrielbalbuena@gmail.org>"

RUN pip install mlxtend memory_profiler

# Asume root
USER root

# Install telegraf
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf_1.12.6-1_amd64.deb
RUN dpkg -i telegraf_1.12.6-1_amd64.deb

RUN service telegraf start
RUN telegraf &
