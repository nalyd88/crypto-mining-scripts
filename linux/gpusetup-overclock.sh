!/bin/bash

# Stats
# nvidia-smi -q -d clock
# nvidia-smi -q -d power

sudo nvidia-smi -pm 1
sudo nvidia-smi -ac 3505,1531

nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=100'
nvidia-settings -a '[gpu:1]/GPUGraphicsClockOffset[3]=100'
nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=400'
nvidia-settings -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=400'

sudo nvidia-smi -ac 3705,1631


