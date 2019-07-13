FROM dhspence/docker-genomic-analysis:latest
MAINTAINER David H. Spencer <dspencer@wustl.edu>

LABEL description="Heavy container for Chromoseq"


###############
# Octopus
###############

WORKDIR /opt/
RUN git clone -b develop https://github.com/luntergroup/octopus.git && \
    octopus/scripts/install.py --install-dependencies --download-forests && \
    echo 'export PATH='$(pwd)'/octopus/bin:$PATH'
