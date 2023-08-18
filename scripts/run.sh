#!/bin/bash

xhost +

docker run -it -v $PWD/simulacoes:/ns2 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY gelirettore/ns2 bash
