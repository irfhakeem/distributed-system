# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.122.159:8001,192.168.122.198:8002,192.168.122.253:8003,192.168.122.37:8004 race "PUT color black" "PUT color white"

# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.122.159:8001,192.168.122.198:8002,192.168.122.253:8003,192.168.122.37:8004 getall color

# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.122.159:8001,192.168.122.198:8002,192.168.122.253:8003,192.168.122.37:8004 race "PUT color red" "PUT color blue"

# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.122.159:8001,192.168.122.198:8002,192.168.122.253:8003,192.168.122.37:8004 getall color
