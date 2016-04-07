FROM boot2docker/boot2docker

RUN cd /rootfs \
 && curl -sSL https://patch-diff.githubusercontent.com/raw/boot2docker/boot2docker/pull/1088.patch | patch -p3

RUN /make_iso.sh
CMD ["cat", "boot2docker.iso"]
