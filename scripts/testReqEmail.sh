#!/bin/env bash

curl -X POST http://172.17.0.2:2202 -d '{"jsonrpc": "2.0", "method": "validEmail", "params": {"email": "weimenglee@gmail.com"}, "id": 1}'