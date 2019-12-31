FROM osimis/orthanc:19.11.2

ENV PATH /opt/conda/bin:$PATH

RUN \
  apt-get update --fix-missing && \
  apt-get install --fix-missing -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN curl https://pyenv.run | bash

RUN pyenv install 3.7.5 && pyenv global 3.7.5

RUN pip install pymedphys
