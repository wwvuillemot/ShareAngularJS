# -------------------------
#
# Install Cent OS
#
# Taken from https://github.com/Mashape/docker-nodejs/blob/master/Dockerfile
#
# -------------------------
# VERSION       latest

# use the centos base image provided by dotCloud
FROM centos
MAINTAINER Marco Palladino, marco@mashape.com

# Node version
ENV NODE_VERSION 0.10.33

# Upgrading system
RUN yum -y clean all
RUN yum -y distro-sync
RUN yum -y update
RUN yum -y upgrade

# -------------------------
#
# Install Node, Bower
#
# -------------------------

# Installing node.js
RUN yum install -y wget tar make gcc-c++ openssl openssl-devel
RUN cd /tmp && wget http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz && tar xzf node-v$NODE_VERSION.tar.gz && cd node-v$NODE_VERSION && ./configure && make && make install

# Installing bower globally
RUN npm install -g bower

# -------------------------
#
# Install our AngularJS app
#
# -------------------------

# Bundle app source
COPY . /app
# Install app dependencies
# NOTE, you will get UNMET dependency warnings which you can safely (we hope)
# ignore
RUN cd /app; npm install

# -------------------------
#
# Configure our Runtime
#
# -------------------------

EXPOSE  8000
# default command to run for container
CMD ["npm", "start /app"]

# From docker CLI
# %> docker run -d {ImageName} cd app; npm start
