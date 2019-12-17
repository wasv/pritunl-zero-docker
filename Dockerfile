FROM centos:7

RUN yum update -y

RUN echo $'[pritunl]\n\
name=Pritunl Repository\n\
baseurl=https://repo.pritunl.com/stable/yum/centos/7/\n\
gpgcheck=1\n\
enabled=1' > /etc/yum.repos.d/pritunl.repo

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 7568D9BB55FF9E5287D586017AE645C0CF8E292A
RUN gpg --armor --export 7568D9BB55FF9E5287D586017AE645C0CF8E292A > key.tmp && rpm --import key.tmp && rm -f key.tmp

RUN yum install -y pritunl-zero

ENTRYPOINT ["/usr/bin/pritunl-zero"]
CMD ["start"]
