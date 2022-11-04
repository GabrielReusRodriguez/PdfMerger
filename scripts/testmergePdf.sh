#!/bin/env bash

PDF1=`base64 -w0 $1`
PDF2=`base64 -w0 $2`


PAYLOAD='{"jsonrpc": "2.0", "method": "mergePdf", "params": {"lista_b64Pdfs": [ { "pdf": "'${PDF1}'" }, { "pdf":"'${PDF2}'" }] }, "id": 1}'

echo  "${PAYLOAD}" > ../tmp/payload.json

#VALOR="curl -X POST http://127.0.0.1 -d '${PAYLOAD}'"

#echo $VALOR

curl -X POST http://127.0.0.1 -d @../tmp/payload.json
rm  ../tmp/payload.json



#curl -X POST http://127.0.0.1 -d '{"jsonrpc": "2.0", "method": "mergePdf", "params": {"lista_b64Pdfs": [ { "pdf": "${PDF1}" }, { "pdf":"${PDF2}" }] }, "id": 1}'
#curl -X POST http://127.0.0.1 -d '{"jsonrpc": "2.0", "method": "mergePdf", "params": {"lista_b64Pdfs": [ { "pdf": "" }, { "pdf":"" }] }, "id": 1}'