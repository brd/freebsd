# $FreeBSD$

TESTSDIR=	${TESTSBASE}/sbin/pfctl/files
FILESDIR=	TESTSDIR

# We use ${.CURDIR} as workaround so that the glob patterns work.
FILES!=	ls ${.CURDIR}/pf????.*
FILES+=		${.CURDIR}/pfctl_test_descr.sh

.include <bsd.progs.mk>
