#
# $FreeBSD$
#

OPENBSMDIR=${SRCTOP}/contrib/openbsm
.PATH: ${OPENBSMDIR}/bin/auditd

CFLAGS+=	-I${OPENBSMDIR}

CONFS=	audit_class audit_control audit_event audit_user audit_warn
CONFSMODE_audit_class=	444
CONFSMODE_audit_control=	600
CONFSMODE_audit_event=	444
CONFSMODE_audit_user=	600
CONFSMODE_audit_warn=	500
CONFSDIR=	/etc/security
PROG=	auditd
SRCS=	auditd.c audit_warn.c auditd_fbsd.c
MAN=	auditd.8

LIBADD=	auditd bsm

WARNS?=	3

.include <bsd.prog.mk>
