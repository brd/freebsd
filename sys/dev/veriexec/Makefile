VERIEXECDIR=	${INCLUDEDIR}/dev/veriexec
VERIEXEC=	veriexec_ioctl.h

.if ${TYPE} == "copies"
FILESGROUPS+=	VERIEXEC
.endif
.if ${TYPE} == "symlinks"
.for f in ${VERIEXEC}
SYMLINKS+=	../../../../sys/dev/veriexec/${f} ${VERIEXECDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
