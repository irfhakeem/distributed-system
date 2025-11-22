# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 race "PUT color black" "PUT color white"

# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 getall color

# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 race "PUT color red" "PUT color blue"

# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004 getall color
