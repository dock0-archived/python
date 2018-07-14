FROM dock0/amylum_arch
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed base-devel openssl zlib
RUN git clone https://github.com/pyenv/pyenv.git /opt/pyenv
RUN ln -s /opt/pyenv/bin/pyenv /usr/bin/pyenv
ADD pyenv.sh /etc/profile.d/pyenv.sh
ADD bashrc /root/.bashrc
