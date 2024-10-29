# Dockerfile for variant-calling

# start with Ubuntu
FROM condaforge/miniforge3

# install dependencies
#RUN apt-get update && apt-get install -y \

# install software
RUN conda install -c bioconda fastqc -y
RUN conda install -c bioconda trimmomatic -y
RUN conda install -c bioconda bwa -y
RUN conda install -c bioconda samtools -y
RUN conda install -c bioconda bcftools -y

# start with bash
CMD ["/bin/sh", "-c", "exec bash"]
