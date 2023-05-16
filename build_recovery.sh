# Build Recovery
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_vince-eng
mka recoveryimage -j$(nproc --all)
