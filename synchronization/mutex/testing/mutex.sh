# Single PUT to node 1
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 cmd --node 0 "PUT color blue"

# GET from node 4
python3 ./kvclient.py  --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 cmd --node 3 "GET color"

# Single PUT to node 2
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 cmd --node 1 "PUT color green"

# GET from node 3
python3 ./kvclient.py  --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 cmd --node 2 "GET color"

# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 race "PUT color black" "PUT color white"

# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 getall color
