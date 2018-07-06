# $FreeBSD$

.include <src.opts.mk>

NO_OBJ=

FILESGROUPS=	FILES

FILES=	README \
	cron \
	imap \
	login \
	other \
	passwd pop3 \
	sshd su system \
	xdm

FILESDIR=	/etc/pam.d
FILESMODE=	644

.if ${MK_AT} != "no"
FILES+=		atrun
PACKAGE_atrun=	at
.endif

.if ${MK_FTP} != "no"
FILES+=		ftpd
PACKAGE_ftpd=	ftp
LINKS=	${FILESDIR}/ftpd ${FILESDIR}/ftp
.endif

.if ${MK_TELNET} != "no"
FILES+=		telnetd
PACKAGE_telnetd=telnet
.endif

FILESMODE_README=	444

.include <bsd.prog.mk>
