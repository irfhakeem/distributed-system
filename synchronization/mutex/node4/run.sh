#!/bin/bash

python3 ./kv.py --id 4 --tcp 8004 --udp 8104 --peers 192.168.122.159:8001=1,192.168.122.198:8002=2,192.168.122.253:8003=3 --logger-addr 192.168.122.105:9000 --numnodes 4 --use-mutex 0
