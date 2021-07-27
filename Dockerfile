FROM texlive/texlive:latest

RUN apt update && \
  apt install -qy inkscape && \
  apt install python && \
  pip install Pygments && \
  apt-get autoremove -qy --purge && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean && \
  rm -rf /var/cache/apt/


