FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"


OVERRIDES_append = "${@bb.utils.contains("PACKAGECONFIG", "udev", ":udev-enabled", "",d)}"

SRC_URI_append_hardkernel-odroidn2plus_udev-enabled = " file://soundconfig \
                                                        file://90-alsa-restore.rules \
                                                      "

FILES_alsa-utils-alsactl_append_hardkernel-odroidn2plus_udev-enabled = " ${libdir}/udev/soundconfig \
                                                                        "

do_install_append() {
    echo DUPA!!!!
    pwd
    ls -lath ${S}
    # if soundconfig file exists it means that we should install custom rules file and soundconfig script
    if [ -f "${B}/../soundconfig" ]; then
        echo soundconfig exists
        #We need to remove default rules file
        rm -rf ${D}/lib/udev/rules.d/90-alsa-restore.rules ${D}/${libdir}/udev/rules.d/90-alsa-restore.rules
        rm -d ${D}/lib/udev/rules.d && rm -d ${D}/lib/udev && rm -d ${D}/lib || :
        install -d ${D}/${libdir}/udev/rules.d/
        install "${B}/../soundconfig" ${D}/${libdir}/udev
        install "${B}/../90-alsa-restore.rules" ${D}/${libdir}/udev/rules.d

    else
        echo "soundconfig doesn't exist"
    fi
}

