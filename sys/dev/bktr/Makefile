BKTRDIR=	${INCLUDEDIR}/dev/bktr
BKTR=	ioctl_bt848.h \
	ioctl_meteor.h

.if ${TYPE} == "copies"
FILESGROUPS+=	BKTR
.endif
.if ${TYPE} == "symlinks"
.for f in ${BKTR}
SYMLINKS+=	../../../../sys/dev/bktr/${f} ${BKTRDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
