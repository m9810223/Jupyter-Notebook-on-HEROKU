#!/bin/sh

export $(sed 's/\#.*//g' $(dirname "$0")/.env)

python -m jupyter notebook --config=./jupyter_config.py
