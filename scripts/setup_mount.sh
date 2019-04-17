#!/bin/bash

mkdir -p /mount/data/src/
chmod -R a+rw /mount/data

cd /mount/data/src/
#TODO just move from GOTPATH and run make here, update dockerfile, after consolidating to one repo
git clone https://github.com/ericKlawitter/devstats-example.git devstats
cd devstats
./scripts/copy_devstats_binaries.sh

rm -rf /etc/gha2db && ln -sf /mount/data/src/devstats /etc/gha2db
