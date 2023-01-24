#!/bin/sh

WORK_DIR=/home/onyxia/work
CLONE_DIR=${WORK_DIR}/load-test

# Clone course repository
REPO_URL=git@github.com:pedevineau/load-siret.git
git clone --depth 1 $REPO_URL $CLONE_DIR

# Install additional packages if needed
REQUIREMENTS_FILE=${CLONE_DIR}/requirements.txt
[ -f $REQUIREMENTS_FILE ] && pip install -r $REQUIREMENTS_FILE && rm $REQUIREMENTS_FILE

cd $CLONE_DIR

chown onyxia -R /home/onyxia/ # Sinon onyxia n'a plus les droits
