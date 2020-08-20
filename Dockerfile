FROM jupyter/datascience-notebook

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

COPY notebooks ${HOME}/work
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN curl -sL https://rpm.nodesource.com/setup_lts.x \
 && bash -

RUN jupyter labextension install @lckr/jupyterlab_variableinspector \
 &&  jupyter labextension install @jupyterlab/git \
 && pip install --upgrade jupyterlab-git \
 && jupyter serverextension enable --py jupyterlab_git jupyterlab

EXPOSE 8888