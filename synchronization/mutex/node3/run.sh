#!/bin/bash

python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 127.0.0.1:8001=1,127.0.0.1:8002=2,127.0.0.1:8004=4 --logger-addr 127.0.0.1:9000 --numnodes 4 --use-mutex 1
