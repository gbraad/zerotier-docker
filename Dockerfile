FROM centos:7
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN yum install -y sudo; \
    curl -s 'https://pgp.mit.edu/pks/lookup?op=get&search=0x1657198823E52A61' | gpg --import && \
    if z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | sudo bash; fi; \
    yum remove -y sudo; \
    yum clean all

ADD entrypoint.sh /opt/

ENTRYPOINT ["/opt/entrypoint.sh"]
