#!/bin/env bash

PAYLOAD='{"jsonrpc": "2.0", "method": "ping", "params": {}, "id": 1}'

curl -X POST http://127.0.0.1 -d  '{"jsonrpc": "2.0", "method": "ping", "params": {}, "id": 1}'
