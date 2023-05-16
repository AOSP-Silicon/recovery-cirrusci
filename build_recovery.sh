# Ofox Dir
cd ~/fox_12.1

# Build Recovery
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export OF_MAINTAINER=GhostMaster69-dev
export OF_USE_LATEST_MAGISK=true
lunch twrp_vince-eng
mka recoveryimage -j$(nproc --all)
