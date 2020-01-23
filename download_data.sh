#!/bin/bash

# Make data directory
export DATA_DIR=$HOME/data
mkdir $DATA_DIR

# Download SearchQA dataset
curl gdrive.sh | bash -s 1OxRhw81g7amW3aBd_iu2By5THysgr2uv
unzip $DATA_DIR/SearchQA.zip -d $DATA_DIR

# Download Glove
export GLOVE_DIR=$DATA_DIR/glove
mkdir $GLOVE_DIR
wget -c http://nlp.stanford.edu/data/glove.6B.zip -O $GLOVE_DIR/glove.6B.zip
unzip $GLOVE_DIR/glove.6B.zip -d $GLOVE_DIR

# Download NLTK
python -m nltk.downloader -d $HOME/nltk_data punkt

# Download Pre-trained datasets
export PRETRAINED_DIR=$DATA_DIR/pretrained
mkdir $PRETRAINED_DIR
wget -c https://storage.googleapis.com/pretrained_models/translate.ckpt-1460356.zip -O $PRETRAINED_DIR/translate.ckpt-1460356.zip
unzip $PRETRAINED_DIR/translate.ckpt-1460356.zip -d $PRETRAINED_DIR

