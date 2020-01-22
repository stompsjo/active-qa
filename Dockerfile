FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install --yes git python3 python3-pip unzip curl
RUN git clone https://github.com/stompsjo/active-qa.git $HOME/active-qa/
RUN pip3 install -r $HOME/active-qa/requirements.txt

RUN curl gdrive.sh | bash -s 1OxRhw81g7amW3aBd_iu2By5THysgr2uv
