FROM jenkins:latest

USER root
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl-dev \
      && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
