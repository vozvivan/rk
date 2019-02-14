FROM centos:centos7

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20181205"

RUN yum -y update && yum clean all && yum -y install \
    bc \
    bzip2 \
    make \
    perl \
    rsync \
    unzip \
    wget \
    time \
    automake \
    e2fsprogs \
    glibc.i686 \
    libstdc++.i686 \
    which && \
    yum -y groupinstall "Development tools" && \
    yum -y install 'perl(ExtUtils::MakeMaker)'
RUN yum clean all
ENV PATH="${PATH}:/buildroot/buildroot/output/rockchip_rk3308_release/host/bin/"

CMD ["/bin/bash"]
