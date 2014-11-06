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
# Need to install to use pq_config
RUN apt-get install -y libpq-dev

# Install latest nodejs version
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install -y nodejs
# Install grunt terminal tool globally
RUN npm install -g grunt-cli

# Need to use make while installing dependencies
# for expressjs
RUN apt-get install -y build-essential make g++

