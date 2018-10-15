FROM ubuntu:latest

RUN apt-get update
#RUN python -V
RUN apt-get install -y curl
RUN apt-get install -y sudo
RUN apt-get install -y vim
RUN apt-get install -y unzip
RUN apt-get install -y python
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN aws --version
