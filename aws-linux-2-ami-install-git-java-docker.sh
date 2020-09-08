#!/bin/bash
yum update -y
yum install git -y
amazon-linux-extras install java-openjdk11 -y
amazon-linux-extras install docker -y
service docker start
usermod -a -G docker ec2-user