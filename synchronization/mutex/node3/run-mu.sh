#!/bin/bash

python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 192.168.122.159:8001=1,192.168.122.198:8002=2,192.168.122.37:8004=4 --logger-addr 192.168.122.105:9000 --numnodes 4 --use-mutex 1
