#!/bin/env bash

docker run --rm -p 127.0.0.1:80:2202/tcp --user $(id -u):$(id -g)  gabriel/pdfutils:1.0 