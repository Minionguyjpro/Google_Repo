FROM ubuntu
MAINTAINER Minionguyjpro
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python-is-python3 -y
RUN apt-get install repo -y
ENTRYPOINT ["/bin/bash"]
