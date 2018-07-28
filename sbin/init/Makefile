#	@(#)Makefile	8.1 (Berkeley) 7/19/93
# $FreeBSD$

CONFGROUPS=	CONFETC CONFETCEXEC CONFETCDEFAULTS
CONFETCDIR=	/etc
CONFETC=	network.subr rc rc.initdiskless rc.subr rc.shutdown
CONFETCMODE=	644
CONFETCEXEC=	netstart pccard_ether rc.resume rc.suspend
CONFETCEXECDIR=	/etc
CONFETCEXECMODE=	755
CONFETCDEFAULTSDIR=	/etc/defaults
CONFETCDEFAULTS=	rc.conf
PACKAGE=runtime
PROG=	init
SRCS=	init.c getmntopts.c
MAN=	init.8
PRECIOUSPROG=
INSTALLFLAGS=-b -B.bak
CFLAGS+=-DDEBUGSHELL -DSECURE -DLOGIN_CAP -DCOMPAT_SYSV_INIT
LIBADD=	util crypt

# Needed for getmntopts.c
MOUNT=	${SRCTOP}/sbin/mount
CFLAGS+=-I${MOUNT}
.PATH:	${MOUNT}

NO_SHARED?=	YES

SUBDIR+=	rc.d

DIRS+=	ETC_RCCONFD
ETC_RCCONFD=	/etc/rc.conf.d

DIRS+=	VAR_RUN
VAR_RUN=	/var/run

DIRS+=	VAR_SPOOL_LOCK
VAR_SPOOL_LOCK=	/var/spool/lock
VAR_SPOOL_LOCK_MODE=	775
VAR_SPOOL_LOCK_OWN=	uucp
VAR_SPOOL_LOCK_GRP=	dialer

.include <bsd.prog.mk>
