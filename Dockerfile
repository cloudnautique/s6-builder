FROM jprjr/arch:latest
MAINTAINER John Regan <john@jrjrtech.com>

RUN pacman -Syy && \
    pacman -S --noconfirm --quiet --needed base-devel curl && \
    pacman -S --noconfirm --quiet --needed --asdeps git jshon expac

RUN mkdir -p /build && mkdir -p /output

ADD build.sh /opt/build.sh

VOLUME "/build"
VOLUME "/output"

