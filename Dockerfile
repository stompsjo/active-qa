FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install --yes git python3 python3-pip unzip curl wget python python-pip
RUN git clone https://github.com/stompsjo/active-qa.git $HOME/active-qa/
RUN pip install -r $HOME/active-qa/requirements.txt
