#!/bin/sh

# This script will run ethminer on OpenCL device 0
# DAC 2018/01/12

ID=0xc090C04839e0EAE5Bdcde2b0bD47b115D112C8B0
MINER=Miner01
EMAIL=dcbn8@mst.edu
POOL=http://eth-us.dwarfpool.com/$ID/$MINER/$EMAIL

# Not sure if these are useful for ethminer or not...
#export GPU_FORCE_64BIT_PTR=0 # This causes my RX 580 to crash
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

#ethminer -G -SP 1 -F $POOL --opencl-devices 0

# Use stratum proxy
ethminer --farm-recheck 400 --cl-local-work 256 --cl-global-work 16384 -G -F http://127.0.0.1:8080/$MINER

