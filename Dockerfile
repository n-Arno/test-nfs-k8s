FROM k8s.gcr.io/volume-nfs:0.8

LABEL org.opencontainers.image.source=https://github.com/n-Arno/test-nfs-k8s

RUN yum update -y && yum clean all
