FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y ca-certificates openssh-server curl  postfix

RUN curl -LO  https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && \
    chmod 777 script.deb.sh && \
    ./script.deb.sh && \
    apt-get install -y gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure
