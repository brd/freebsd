NVDIR=	${INCLUDEDIR}/sys
NV=	nvpair.h

.if ${TYPE} == "copies"
FILESGROUPS+=	NV
.endif
.if ${TYPE} == "symlinks"
.for f in ${NV}
SYMLINKS+=	../../../sys/cddl/contrib/opensolaris/uts/common/sys/${f} ${NVDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
