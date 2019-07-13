FROM dhspence/docker-genomic-analysis:latest
MAINTAINER David H. Spencer <dspencer@wustl.edu>

LABEL description="Heavy container for Chromoseq"


###############
# Octopus
###############

RUN conda install -y -c conda-forge -c bioconda libxgboost libgcc boost octopus


