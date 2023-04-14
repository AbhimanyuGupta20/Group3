#!/bin/bash


tar -xvf shakespeare.tar

find shakespeare/* -maxdepth 4 -not -name 'README' -exec cat {} +>plays.txt

split -n l/5 plays.txt plays_
