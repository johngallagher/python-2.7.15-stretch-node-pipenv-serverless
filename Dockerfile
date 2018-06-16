FROM circleci/python:2.7.15-stretch-node

RUN rm -rf /var/runtime /var/lang && \
  curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python && \
  pip install -U pip setuptools --no-cache-dir && \
  pip install -U virtualenv pipenv --no-cache-dir

