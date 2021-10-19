dir_Makefiles := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))Makefiles

include ${dir_Makefiles}/git.Makefile
include ${dir_Makefiles}/utils.Makefile


# DOCKERFILE=./3.8.12-alpine3.13.Dockerfile
# TAG_NAME=heroku-jupyter-alpine3

# DOCKERFILE=./3.8.12-slim-buster.Dockerfile
# TAG_NAME=heroku-jupyter-slim-buster


# DOCKERFILE=./base-notebook.Dockerfile
# TAG_NAME=heroku-jupyter-base-notebook


DOCKERFILE=./minimal-notebook.Dockerfile
TAG_NAME=heroku-jupyter-minimal-notebook


remote_info=$(shell git remote -v | head -n 1 | cut -d" " -f1)
ginit: ## git init
	rm -rf .git
	git init
	git add -A
	git commit -q -m "init"
	git remote add ${remote_info}
	git push -q --set-upstream origin master -f


build:
	docker build --no-cache --tag ${TAG_NAME} --file ${DOCKERFILE} .

run: build
	docker run --rm -it -p 8888:8888 ${TAG_NAME} ./start.sh 


