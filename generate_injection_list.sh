#!/bin/bash

INJ_RATE=$(python -c "print 0.02 * 24 * 365 * 3600") # Shooting for 1 / 10 seconds
JITTER=20

./pyburst_binj --gps-start-time 1126620016 \
    --gps-end-time 1136995216 \
    --burst-family adhoc \
    --output adhoc_test.xml.gz \
    --event-time-type fixed \
    --event-rate ${INJ_RATE} \
    --jitter ${JITTER} \
    --seed 0 \
    --adhoc-fix-hrss 1e-21 \
    --adhoc-fix-hrss 5e-22 \
    --adhoc-file-location s15a2o09=./s15a2o09_ls.asc
