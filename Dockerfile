# HTCondor Node
#
# Version 0.0.1
FROM ubuntu
MAINTAINER Martin Conklin <mjmc@uvic.ca>

RUN apt-get update -y \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install htcondor \
    && apt-get clean

COPY config /bin/
    && condor_config.local /etc/condor/
 
ENTRYPOINT ["config"]
