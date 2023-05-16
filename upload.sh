# TWRP Recovery
FIMG=TWRP-3.7.0_12-vince-$(date "+%d%m%Y-%I%M%S")-Unofficial.img

# Rename to TWRP Recovery
cp -rf out/target/product/vince/recovery.img $FIMG

# function to upload
tg_push() {
    curl -F document=@"$FIMG" \
         -F chat_id="$TG_CHAT_ID" \
         -F caption="TWRP Recovery Unofficial

	Device: Xiaomi Redmi 5 Plus (vince)
	Date: $(date -I)
	Version: 3.7.0_12
	Maintainer: @GhostMaster69_dev" \
         "https://api.telegram.org/bot$TG_TOKEN/sendDocument"
}

# Push on Telegram
tg_push

# GH Release
gh auth status
gh release upload R12.1 $FIMG -R github.com/GhostMaster69-dev/twrp-vince
