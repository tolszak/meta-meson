FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto:"

SRC_URI:append:meson-gx = " file://0001-drm-bridge-display-connector-implement-bus-fmts-call.patch;minrev=v5.16.62%;maxrev=v5.16.67"

SRC_URI:append:meson-g12a = " file://0002-FROMLIST-arm64-dts-amlogic-add-support-for-radxa-zero.patch"

SRC_URI:append:hardkernel-odroidc2 = " file://0001-Odroid-C2-enable-microusb.patch"

# Uncomment to enable overclocking to 1752 on Odroid C2
#SRC_URI:append:hardkernel-odroidc2 = " file://0002-Odroid-C2-overclock-to-1752000000.patch"