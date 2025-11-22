#!/bin/bash

python3 ./kv.py --id 2 --tcp 8002 --udp 8102 --peers 192.168.122.159:8001=1,192.168.122.253:8003=3,192.168.122.37:8004=4 --logger-addr 192.168.122.105:9000 --numnodes 4 --use-mutex 1
