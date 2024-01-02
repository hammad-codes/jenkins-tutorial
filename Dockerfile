FROM jenkins/jenkins:latest

USER root

RUN apt-get update && apt-get install -y python3 python3-pip && apt install -y python3.11-venv

USER jenkins