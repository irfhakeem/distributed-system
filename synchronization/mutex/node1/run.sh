#!/bin/bash

python3 ./kv.py --id 1 --tcp 8001 --udp 8101 --peers 192.168.122.198:8002=2,192.168.122.253:8003=3,192.168.122.37:8004=4 --logger-addr 192.168.122.105:9000 --numnodes 4 --use-mutex 0
