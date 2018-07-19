# $FreeBSD$

CONFS=	services
PROG=	services_mkdb
MAN=	services_mkdb.8
SRCS=	services_mkdb.c uniq.c extern.h

.include <bsd.endian.mk>
.if ${TARGET_ENDIANNESS} == "1234"
CAP_MKDB_ENDIAN?= -l
.elif ${TARGET_ENDIANNESS} == "4321"
CAP_MKDB_ENDIAN?= -b
.endif

DIRS+=	VAR_DB
VAR_DB=	/var/db

distribution: installconfig installdirs
	services_mkdb ${CAP_MKDB_ENDIAN} -q -o ${DESTDIR}/var/db/services.db \
		${DESTDIR}/etc/services

.include <bsd.prog.mk>
