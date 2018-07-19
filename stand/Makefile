# $FreeBSD$

.include <src.opts.mk>

# For amd64 we have to build 32 and 64 bit versions of things. For
# others we don't. LIB32LIST is a list of libraries, which if
# included, need to be built 32-bit as well.
.if ${MACHINE_ARCH} == "amd64"
LIB32LIST=libsa ficl liblua
.endif

S.yes+=			libsa

S.${MK_FORTH}+=		ficl
S.${MK_FORTH}+=		forth
S.${MK_LOADER_LUA}+=	liblua
S.${MK_LOADER_LUA}+=	lua
S.${MK_FDT}+=		fdt
S.${MK_LOADER_OFW}+=	ofw
S.yes+=			defaults
S.yes+=			man

.include <bsd.arch.inc.mk>

S.${MK_EFI}+=		efi
S.${MK_LOADER_UBOOT}+=	uboot

.if exists(${.CURDIR}/${MACHINE}/.)
S.yes+=         ${MACHINE}
.endif

# Build the actual subdir list from S.yes, adding in the 32-bit
# variant if necessary.
.for _x in ${S.yes}
SUBDIR+=${_x}
.if defined(LIB32LIST) && ${LIB32LIST:M${_x}}
SUBDIR+=${_x}32
.endif
.endfor

DIRS+=	BOOT_DTB
BOOT_DTB=	/boot/dtb

DIRS+=	BOOT_DTB_OVERLAYS
BOOT_DTB_OVERLAYS=	/boot/dtb/overlays

DIRS+=	BOOT_LUA
BOOT_LUA=	/boot/lua

DIRS+=	BOOT_MODULES
BOOT_MODULES=	/boot/modules

.include <bsd.subdir.mk>
