# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

FROM jupyter/scipy-notebook:7a0c7325e470

# Install jupyterlab
RUN conda install jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix
RUN pip install pymedphys[library,difficult,labs]

USER jovyan
