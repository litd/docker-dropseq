# % Last Change: Tue Mar 30 02:44:23 PM 2021 CDT
# Base Image
FROM continuumio/miniconda3:4.9.2

# File Author / Maintainer
MAINTAINER Tiandao Li <litd99@gmail.com>

ENV PATH /opt/conda/bin:$PATH

# Installation
RUN conda install -c bioconda dropseq_tools=2.4.0 && \
	conda install -c bioconda star=2.7.8a && \
	conda clean --all --yes

# set timezone, debian and ubuntu
RUN ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
	echo "America/Chicago" > /etc/timezone

CMD [ "/bin/bash" ]

