FROM ubuntu
MAINTAINER Minionguyjpro
RUN apt-get update
RUN apt-get install python2 -y
RUN apt-get install repo -y
ENTRYPOINT ["/bin/bash"]
