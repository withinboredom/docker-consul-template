FROM progrium/busybox
MAINTAINER Rob Landers <landers.robert@gmail.com>

ADD https://github.com/hashicorp/consul-template/releases/download/v0.6.5/consul-template_0.6.5_linux_amd64.tar.gz /tmp/consul.tgz
RUN cd /bin && gzip -dc /tmp/consul.tgz | tar -xf - && rm /tmp/consul.tgz

ENV DOCKER_HOST unix:///tmp.docker.sock
ENTRYPOINT ["/bin/cosul/consul-template"]