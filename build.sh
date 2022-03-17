#!/bin/bash

(
    cd qmk_firmware

    qmk  flash  -kb ferris/0_2 -km fride   
)