FROM centos:7


LABEL Remarks="20240327 examn"

RUN yum -y update && \

yum -y install python3 && \

yum clean all && \

pip3 install requests pyyaml

COPY count.py ./

CMD ["python3", "./count.py"]
