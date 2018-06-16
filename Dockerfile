FROM circleci/python:2.7.15-stretch-node

RUN pip install -U virtualenv pipenv --no-cache-dir
RUN sudo chown -R $USER:$(id -gn $USER) /root/.config
RUN sudo npm install -g serverless
