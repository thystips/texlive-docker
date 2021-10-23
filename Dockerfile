FROM texlive/texlive:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update
RUN apt-get upgrade -y 
RUN apt-get install -qy inkscape python3-pip
RUN pip3 install Pygments
RUN apt-get autoremove -qy --purge
RUN  rm -rf /var/lib/apt/lists/* && \
  apt-get clean && \
  rm -rf /var/cache/apt/


