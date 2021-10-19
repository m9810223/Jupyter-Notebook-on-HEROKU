FROM python:3.8.12-slim-buster

ARG APP_HOME=${HOME}/app

WORKDIR ${APP_HOME}

COPY ./app ${APP_HOME}

EXPOSE 8888

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    gcc \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
    && \
    export PATH="${HOME}/.local/bin:${PATH}" && \
    python -m pip install \
    --no-cache-dir \
    --disable-pip-version-check --upgrade \
    pip \
    numpy \
    pandas \
    beautifulsoup4 \
    requests \
    jupyter \
    jupyterlab 
