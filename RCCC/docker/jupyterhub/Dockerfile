# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG JUPYTERHUB_VERSION
FROM jupyterhub/jupyterhub:$JUPYTERHUB_VERSION

ENV PATH /opt/conda/bin:$PATH

RUN pip install \
        psycopg2-binary==2.8.* \
        oauthenticator==0.10.* \
        dockerspawner==0.11.*
