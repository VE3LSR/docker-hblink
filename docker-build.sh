#!/bin/bash

source docker-vars.sh

SAMPLES='hb_confbridge_rules-SAMPLE.py hb_routing_rules-SAMPLE.py hblink-SAMPLE.cfg HB_Bridge.cfg'

for SAMPLE in $SAMPLES; do
    if [ ! -f $SAMPLE ]; then
        wget https://raw.githubusercontent.com/n0mjs710/HBlink/HB_Bridge/$SAMPLE
    fi
done

sudo docker build -t $NAME .


