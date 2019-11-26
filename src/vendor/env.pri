CONFIG += link_pkgconfig

DEFINES += QT_MESSAGELOGCONTEXT

unix {
isEmpty(PREFIX) {
    PREFIX = /usr
}
}

win32{
    DEFINES += DTK_STATIC_LIB
}
NO_BOOTLOADER=TRUE
ARCH = $$QMAKE_HOST.arch
isEqual(ARCH, i386) | isEqual(ARCH, x86_64) {
    NO_BOOTLOADER=FALSE
}

isEqual(NO_BOOTLOADER, TRUE) {
    DEFINES += DBM_NO_BOOTLOADER
}

win32{
    DEFINES -= DBM_NO_BOOTLOADER
}

mac* {
    DEFINES += DBM_NO_BOOTLOADER
}
