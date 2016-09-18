FROM ubuntu:16.04 

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y --force-yes ansible
