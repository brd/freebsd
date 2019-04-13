TEKENDIR=	${INCLUDEDIR}/teken
TEKEN=	teken.h

.if ${TYPE} == "copies"
FILESGROUPS+=	TEKEN
.endif
.if ${TYPE} == "symlinks"
.for f in ${TEKEN}
SYMLINKS+=	../../../sys/teken/${f} ${TEKENDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
