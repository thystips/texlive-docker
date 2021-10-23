FROM texlive/texlive:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -qy inkscape && \
  apt-get install python && \
  pip install Pygments && \
  apt-get autoremove -qy --purge && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean && \
  rm -rf /var/cache/apt/


