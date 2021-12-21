# % Last Change: Tue Dec 21 03:26:44 PM 2021 CST
# Base Image
FROM continuumio/miniconda3:4.10.3

# File Author / Maintainer
MAINTAINER Tiandao Li <litd99@gmail.com>

ENV PATH /opt/conda/bin:$PATH

# Installation
RUN conda install -c bioconda dropseq_tools=2.5.0 && \
	conda install -c bioconda star=2.7.9a && \
	conda clean --all --yes

# set timezone, debian and ubuntu
RUN ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
	echo "America/Chicago" > /etc/timezone

CMD [ "/bin/bash" ]

