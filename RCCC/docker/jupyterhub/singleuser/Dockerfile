ARG DOCKER_NOTEBOOK_IMAGE
FROM $DOCKER_NOTEBOOK_IMAGE
ARG JUPYTERHUB_VERSION
RUN pip install --no-cache jupyterhub==$JUPYTERHUB_VERSION

RUN conda install jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix
RUN pip install pymedphys[library,difficult,labs]
RUN jupyter lab build

RUN echo '. /usr/local/bin/start.sh jupyter labhub --ip=0.0.0.0 "$@"' > ./start-singleuser.sh

USER jovyan