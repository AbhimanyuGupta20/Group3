#!/bin/bash


tar -xvf shakespeare.tar

find shakespeare/* -maxdepth 4 -not -name 'README' -exec cat {} +>plays.txt

split -n l/5 --additional-suffix=.txt plays.txt plays_

rm -rf shakespeare/
