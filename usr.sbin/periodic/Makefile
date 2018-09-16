# $FreeBSD$

CONFS=	periodic.conf
CONFSDIR=	/etc/defaults
SCRIPTS=periodic.sh
MAN=	periodic.8
FILES=	periodic.conf
FILESDIR=/etc/defaults
SUBDIR=	periodic

DIRS+=	VAR_PRESERVE
VAR_PRESERVE=	/var/preserve

DIRS+=	VAR_BACKUPS
VAR_BACKUPS=	/var/backups
VAR_BACKUPS_MODE=	750

SUBDIR=	etc

.include <bsd.prog.mk>
