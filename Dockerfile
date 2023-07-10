# Runs Python 3.9 as base image
FROM python:3.9
# Sets the maintainer to me, Minionguyjpro!
MAINTAINER Minionguyjpro
# Install all needed programs, including: Git, Python-is-Python3 and Repo (Google)
RUN apt-get update && apt-get install -y apt-transport-https
RUN echo 'deb http://private-repo-1.hortonworks.com/HDP/ubuntu14/2.x/updates/2.4.2.0 HDP main' >> /etc/apt/sources.list.d/HDP.list
RUN echo 'deb http://private-repo-1.hortonworks.com/HDP-UTILS-1.1.0.20/repos/ubuntu14 HDP-UTILS main'  >> /etc/apt/sources.list.d/HDP.list
RUN echo 'deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/azurecore/ trusty main' >> /etc/apt/sources.list.d/azure-public-trusty.list
RUN apt-get install git -y
RUN apt-get install python-is-python3 -y
RUN apt-get install repo -y
RUN repo init || true
RUN cp /.repo/repo/repo /usr/bin/repo
# Sets the entrypoint to Bash; the default terminal for most Linux distributions
ENTRYPOINT ["/bin/bash"]
