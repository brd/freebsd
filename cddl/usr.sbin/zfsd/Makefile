# $FreeBSD$

.include <src.opts.mk>

.include "Makefile.common"

PROG_CXX=	zfsd
MAN=		zfsd.8

DIRS+=	VAR_DB_ZFSD
VAR_DB_ZFSD=	/var/db/zfsd

DIRS+=	VAR_DB_ZFSD_CASES
VAR_DB_ZFSD_CASES=	/var/db/zfsd/cases

HAS_TESTS=
SUBDIR.${MK_GOOGLETEST}+= tests

.include <bsd.prog.mk>
