FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y \
    docker.io \
    git \
    sudo \
    && rm -rf /var/lib/apt/lists/*

USER jenkins
