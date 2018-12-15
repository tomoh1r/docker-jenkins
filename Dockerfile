FROM jenkins/jenkins:lts

USER root

RUN curl -OL https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz ; \
        tar xf docker-18.06.1-ce.tgz ; \
        mv docker/* /usr/local/bin ; \
        rmdir docker

USER jenkins
