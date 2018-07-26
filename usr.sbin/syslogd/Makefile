#	@(#)Makefile	8.1 (Berkeley) 6/6/93
# $FreeBSD$

.include <src.opts.mk>

.PATH: ${SRCTOP}/usr.bin/wall

CONFGROUPS=	CONFS RCD
CONFS=	syslog.conf
PROG=	syslogd
MAN=	syslog.conf.5 syslogd.8
SRCS=	syslogd.c ttymsg.c
RCD=	rc.d/syslogd
RCDDIR=	/etc/rc.d
RCDMODE=	${BINMODE}

LIBADD=	util

.if ${MK_INET_SUPPORT} != "no"
CFLAGS+= -DINET
.endif
.if ${MK_INET6_SUPPORT} != "no"
CFLAGS+= -DINET6
.endif

CFLAGS+= -I${SRCTOP}/usr.bin/wall

DIRS+=	ETC_SYSLOGD
ETC_SYSLOGD=	/etc/syslog.d

DIRS+=	VAR_LOG
VAR_LOG=	/var/log

.include <bsd.prog.mk>
