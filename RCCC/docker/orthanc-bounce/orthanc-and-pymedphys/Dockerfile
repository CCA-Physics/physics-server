FROM osimis/orthanc:19.11.2

RUN \
  apt-get update --fix-missing && \
  apt-get install --fix-missing -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENV HOME /root

RUN curl https://pyenv.run | bash

ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install 3.7.5 && pyenv global 3.7.5 && pyenv rehash

RUN pip install pymedphys==0.26.0
