FROM python:3.8.12-alpine3.13

ARG APP_HOME=${HOME}/app

WORKDIR ${APP_HOME}

COPY ./app ${APP_HOME}

EXPOSE 8888

RUN apk add \
    --update-cache \
    --no-cache \
    libffi-dev \
    g++ \
    && \
    export PATH="${HOME}/.local/bin:${PATH}" && \
    pip install \
    --no-cache-dir \
    --disable-pip-version-check \
    --upgrade \
    pip \
    numpy \
    pandas \
    beautifulsoup4 \
    requests \
    jupyter \
    jupyterlab 
