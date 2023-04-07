FROM ubuntu
MAINTAINER Minionguyjpro
RUN mkdir -p ~/.bin
ENV PATH="${HOME}/.bin:${PATH}"
RUN apt-get install curl -y
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
RUN chmod a+rx ~/.bin/repo
