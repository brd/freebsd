# $FreeBSD$

.include <src.opts.mk>

PROG=	newsyslog
CONFGROUPS=	CONFS RCD
CONFS=	newsyslog.conf
RCD=	rc.d/newsyslog
RCDDIR=	/etc/rc.d
RCDMODE=     ${BINMODE}
MAN=	newsyslog.8 newsyslog.conf.5
SRCS=	newsyslog.c ptimes.c

HAS_TESTS=
SUBDIR.${MK_TESTS}+= tests
SUBDIR+=	newsyslog.conf.d

.include <bsd.prog.mk>
