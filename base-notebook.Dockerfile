FROM jupyter/base-notebook		


ARG APP_HOME=${HOME}/app


WORKDIR ${APP_HOME}


COPY ./app ${APP_HOME}

