ID=0xc090C04839e0EAE5Bdcde2b0bD47b115D112C8B0
MINER=Miner01
EMAIL=dcbn8@mst.edu
POOL=http://eth-us.dwarfpool.com/$ID/$MINER/$EMAIL

#ethminer -U -SP 1 -F $POOL --cuda-parallel-hash 2

# Using stratum proxy
ethminer --farm-recheck 400 -U -F http://127.0.0.1:8080/$MINER #--cuda-parallel-hash 2



