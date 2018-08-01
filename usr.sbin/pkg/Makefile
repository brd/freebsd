# $FreeBSD$

CONFS=	FreeBSD.conf
CONFSDIR=	/etc/pkg
CONFSMODE=	644
PROG=	pkg
SRCS=	pkg.c dns_utils.c config.c
MAN=	pkg.7

CFLAGS+=-I${SRCTOP}/contrib/libucl/include
.PATH:	${SRCTOP}/contrib/libucl/include
LIBADD=	archive fetch ucl sbuf crypto ssl

DIRS+=	VAR_DB_PKG
VAR_DB_PKG=	/var/db/pkg

.include <bsd.prog.mk>
