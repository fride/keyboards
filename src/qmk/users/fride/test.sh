#!/bin/bash

k6 run \
    --out json=test.json \
    --out csv=test.csv
