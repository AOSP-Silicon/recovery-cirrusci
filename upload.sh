# OrangeFox Recovery
FIMG=OrangeFox-R12.1-Alpha-vince-$(date "+%d%m%Y-%I%M%S")-Unofficial.img
FZIP=OrangeFox-R12.1-Alpha-vince-$(date "+%d%m%Y-%I%M%S")-Unofficial.zip

# Rename to OrangeFox Recovery
cp -rf ~/fox_12.1/out/target/product/vince/OrangeFox-Unofficial-vince.img $FIMG
cp -rf ~/fox_12.1/out/target/product/vince/OrangeFox-Unofficial-vince.zip $FZIP

# function to upload
tg_push() {
    curl -F chat_id="$TG_CHAT_ID" \
         -F caption="OrangeFOX Recovery Unofficial

	Device: Xiaomi Redmi 5 Plus (vince)
	Date: $(date -I)
	Version: R12.1 | Alpha
	Maintainer: @GhostMaster69_dev
	File MD5: $(cat $MD5 | cut -c 1-32)" \
         -F document=@"$OFOX" "https://api.telegram.org/bot$TG_TOKEN/sendDocument"
}

export OFOX=$FIMG
export MD5=~/fox_12.1/out/target/product/vince/OrangeFox-Unofficial-vince.img.md5
tg_push

#export OFOX=$FZIP
#export MD5=~/fox_12.1/out/target/product/vince/OrangeFox-Unofficial-vince.zip.md5
#tg_push

# GH Release
gh auth status
gh release upload R12.1 $FIMG -R github.com/GhostMaster69-dev/twrp-vince
gh release upload R12.1 $FZIP -R github.com/GhostMaster69-dev/twrp-vince
