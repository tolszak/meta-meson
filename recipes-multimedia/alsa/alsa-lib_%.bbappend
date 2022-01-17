FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
            file://0001-WIP-add-confs-for-gx-sound-card-and-axg-sound-card.patch \
            file://0002-WIP-add-Amlogic-cards-to-Makefile.am.patch \
            file://0003-WIP-add-analogue-surrounds-to-confs.patch \
"

