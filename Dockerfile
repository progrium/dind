FROM gliderlabs/alpine:3.2
RUN apk-install iptables ca-certificates lxc e2fsprogs bash docker
ADD ./dind /bin/dind
VOLUME /var/lib/docker
ENV DOCKER_OPTS -H unix:///var/run/docker.sock
ENTRYPOINT ["/bin/dind"]
