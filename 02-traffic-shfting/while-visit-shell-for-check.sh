#!/bin/bash

while true; do
    curl -s "http://127.0.0.1.nip.io/productpage" | grep -i "Reviews served by:" -A2
	sleep 1
done