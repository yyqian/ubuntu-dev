FROM ubuntu:16.04
COPY container_files /
RUN chmod 644 /etc/apt/sources.list && chmod 644 /root/.vimrc && chmod 644 /root/.bash_profile && echo "source /root/.bash_profile" >> /root/.bashrc
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential git vim curl
RUN apt-get install -y python3-pip python3-dev python-virtualenv
RUN pip3 install --upgrade tensorflow
RUN mkdir ~/virtualenv && cd ~/virtualenv && virtualenv AI -p python3 --system-site-packages
