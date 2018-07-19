# $FreeBSD$

FILESDIR=	/etc/defaults
FILES=	devfs.rules
CONFS=	devfs.conf
PACKAGE=runtime
PROG=	devfs
SRCS=	devfs.c rule.c
MAN=	devfs.8

DIRS+=	DEV
DEV=	/dev
DEV_MODE=	555

.include <bsd.prog.mk>
