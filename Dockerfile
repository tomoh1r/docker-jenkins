FROM jenkins/jenkins:lts

ARG docker_version=18.06.1-ce

USER root

RUN curl -OL "https://download.docker.com/linux/static/stable/x86_64/docker-${docker_version}.tgz" ; \
        tar xf docker-${docker_version}.tgz ; \
        mv docker/* /usr/local/bin ; \
        rmdir docker

USER jenkins
