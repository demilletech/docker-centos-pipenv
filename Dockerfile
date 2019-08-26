FROM centos:7

ENV LANG=en_US.utf8
ENV PYTHONIOENCODING=utf-8

RUN yum -y install epel-release
RUN yum -y install python37 python37-pip python37-devel
RUN python36 -m pip install pipenv
