FROM quay.io/centos/centos:stream9

ENV LANG en_US.utf8
USER root
CMD [ "/sbin/init" ]

RUN dnf install systemd subscription-manager -y
