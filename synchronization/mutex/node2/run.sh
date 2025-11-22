#!/bin/bash

python3 ./kv.py --id 2 --tcp 8002 --udp 8102 --peers 127.0.0.1:8001=1,127.0.0.1:8003=3,127.0.0.1:8004=4 --logger-addr 127.0.0.1:9000 --numnodes 4 --use-mutex 1
