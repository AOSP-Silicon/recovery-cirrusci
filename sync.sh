# sync rom
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync --no-clone-bundle --no-tags --current-branch --force-sync --force-remove-dirty --jobs=$(nproc --all) --jobs-checkout=$(nproc --all) --jobs-network=$(nproc --all)
git clone https://github.com/GhostMaster69-dev/twrp-vince.git -b fox_12.1 ~/fox_12.1/device/xiaomi/vince
