#!/bin/sh -l

# cd to repo
cd $GITHUB_WORKSPACE/$1

# install dependencies
pytest pytest-mock pytest-cov
pip3 install -r $2

# test
python3 -m pytest $3 --cov=$3 --cov-fail-under=60