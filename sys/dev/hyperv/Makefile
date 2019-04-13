HYPERVDIR=	${INCLUDEDIR}/dev/hyperv
HYPERV=	include/hyperv.h \
	utilities/hv_snapshot.h

.if ${TYPE} == "copies"
FILESGROUPS+=	HYPERV
.endif
.if ${TYPE} == "symlinks"
.for f in ${HYPERV}
SYMLINKS+=	../../../../sys/dev/hyperv/${f} ${HYPERVDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
