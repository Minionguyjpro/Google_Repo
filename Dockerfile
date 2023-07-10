# Runs the container from Ubuntu
FROM python:3.9
# Sets the maintainer to me, Minionguyjpro!
MAINTAINER Minionguyjpro
# Install all needed programs, including: Python 3, Python-is-Python3 and Repo (Google)
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install python-is-python3 -y
RUN apt-get install repo -y
RUN repo init || true
RUN cp /.repo/repo/repo /usr/bin/repo
# Sets the entrypoint to Bash; the default terminal for most Linux distributions
ENTRYPOINT ["/bin/bash"]
