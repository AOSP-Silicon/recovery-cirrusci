# sync rom
mkdir ~/OrangeFox_sync
cd ~/OrangeFox_sync
git clone https://gitlab.com/OrangeFox/sync.git
cd ~/OrangeFox_sync/sync/
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1 --ssh 0
git clone https://github.com/GhostMaster69-dev/twrp-vince.git -b fox_12.1 ~/fox_12.1/device/xiaomi/vince
