FROM debian:testing

# Set variable to supress warings when installing packages
ENV DEBIAN_FRONTEND noninteractive

# Upgrade base system
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

# Use this for add-apt-repository
#RUN apt-get install -y software-properties-common

# Install postgres databse
RUN apt-get install -y postgresql

# Install latest nodejs version
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install -y nodejs

# Need to install to use pq_config
RUN apt-get install -y libpq-dev
# Need to use make
RUN apt-get install -y build-essential make g++

ADD ./resources /src
WORKDIR /src
RUN npm install
RUN npm install grunt
RUN npm install -g grunt-cli

