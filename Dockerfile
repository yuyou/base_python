#FROM 10.49.162.55:5000/dml/base:14.04
FROM iron/python:2
MAINTAINER Yu You <yu.you@nokia.com>

# A base image for Cloudatlas

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
apk update && apk upgrade \
  && apk add nano py-pip nodejs git postgresql-dev py-psycopg2@testing libjpeg-turbo-dev zlib-dev libpng-dev tiff-dev py-pillow \
  && rm -rf /var/cache/apk/*
# mysql-client <- postgresql-dev

#RUN apt-get update && \
#     apt-get -y upgrade && \
#       apt-get install -y  \
#	nano htop npm \
#	libjpeg-dev libpng12-dev libtiff4-dev \
#         mysql-common-5.6 \
#	libmysqlclient-dev \
#	mysql-client-5.6 && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#
#RUN ln -s /usr/bin/nodejs /usr/bin/node

