# $FreeBSD$

PACKAGE=runtime
CONFS=	minfree
CONFSDIR=	/var/crash
PROG=	savecore
LIBADD=	z xo
MAN=	savecore.8
CONFS=	minfree
CONFSDIR=	/var/db

DIRS+=	VAR_CRASH
VAR_CRASH=	/var/crash
VAR_CRASH_MODE=	750

.include <bsd.prog.mk>
