FROM php:5.6-apache

MAINTAINER Rick Wieman <git@rickw.nl>

RUN apt-get update && apt-get install -y ssmtp && rm -r /var/lib/apt/lists/*

ADD ssmtp.conf /etc/ssmtp/ssmtp.conf
