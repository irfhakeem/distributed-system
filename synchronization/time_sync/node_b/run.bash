#!/bin/bash

python3 peer_node.py \
	  --name B --listen 0.0.0.0 5001 \
	  --peers A@192.168.122.159:5000 B@192.168.122.198:5001 D@192.168.122.253:5002 \
	  --logger 192.168.122.253 9999 \
	  --offset-ms -600
