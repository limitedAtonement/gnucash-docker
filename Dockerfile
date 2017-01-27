FROM ubuntu:14.04

RUN apt-get update -qq
RUN apt-get build-dep -qq gnucash
RUN apt-get install -qq swig
RUN apt-get install -qq libboost-all-dev
RUN apt-get --reinstall install -qq language-pack-en language-pack-fr
RUN apt-get install -qq git
RUN apt-get install -qq bash-completion
COPY run /
CMD bash -i
