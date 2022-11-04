#!/bin/env bash

curl -X POST http://172.17.0.2:2202 -d '{"jsonrpc": "2.0", "method": "validZipCode", "params": {"zip": ""}, "id": 1}'