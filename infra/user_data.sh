#!/bin/bash

sudo su
yum update -v
yum install -y docker
service docker start
usermod -a -G docker ec2-user

docker run -p 80:8080 emctc/openjdk:1

