from ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  nmap \
  wget
RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
RUN apt-get install -y ./python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/n/nmap/zenmap_7.60-1ubuntu5_all.deb
RUN apt-get install -y ./zenmap_7.60-1ubuntu5_all.deb

ENTRYPOINT ["zenmap"]
