#	@(#)Makefile	8.1 (Berkeley) 6/8/93
# $FreeBSD$

# reorder gives an editor command for most common terminals
# (in reverse order from n'th to 1'st most commonly used)
# to move them to the front of termcap
#
CONFS=	termcap.small
MAN=	termcap.5

FILES=		termcap termcap.db
FILESDIR=	${BINDIR}/misc
CLEANFILES+=	termcap.db
SYMLINKS=	${BINDIR}/misc/termcap /etc/termcap

.include <bsd.endian.mk>

termcap.db: termcap
	cap_mkdb ${CAP_MKDB_ENDIAN} -f ${.TARGET:R} ${.ALLSRC}

.include <bsd.prog.mk>
