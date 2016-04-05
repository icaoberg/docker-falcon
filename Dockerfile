FROM python:2-onbuild

MAINTAINER Ivan E. Cao-Berg <icaoberg@alumni.cmu.edu>
LABEL Description="This image is used for FALCON"
LABEL Vendor="Computational Biology Department at Carnegie Mellon University"
LABEL Version="0.1"

USER root

# libav-tools for matplotlib anim
RUN apt-get update && \
    apt-get install -y --no-install-recommends libav-tools && \
    apt-get clean && \
RUN apt-get install python-setuptools python-numpy python-scipy python-matplotlib
RUN easy_install pip 
