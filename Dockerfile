FROM ubuntu:14.04
MAINTAINER luxerama <vincent@thebeansgroup.com>
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
RUN apt-get -y install apt-transport-https ca-certificates
RUN echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main" >> /etc/apt/sources.list.d/passenger.list
RUN chown root: /etc/apt/sources.list.d/passenger.list
RUN chmod 600 /etc/apt/sources.list.d/passenger.list
RUN apt-get update
RUN apt-get -y install passenger

EXPOSE 80
ENTRYPOINT ["passenger", "start"]
