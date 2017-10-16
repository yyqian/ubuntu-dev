FROM ubuntu:16.04

COPY sources.list /etc/apt/

RUN chmod 644 /etc/apt/sources.list \
&& apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y build-essential git vim curl python3-pip python3-dev python-virtualenv openssh-server gdb gdbserver

WORKDIR /root

#RUN pip3 install --upgrade tensorflow
#RUN mkdir ~/virtualenv && cd ~/virtualenv && virtualenv Stark -p python3 --system-site-packages

COPY container_files /

RUN chmod 644 /root/.vimrc \
&& chmod 644 /root/.bash_profile \
&& echo "source /root/.bash_profile" >> /root/.bashrc
