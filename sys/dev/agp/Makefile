AGPDIR=	${INCLUDEDIR}/dev/agp
AGP=	agpreg.h

.if ${TYPE} == "copies"
FILESGROUPS+=	AGP
.endif
.if ${TYPE} == "symlinks"
.for f in ${AGP}
SYMLINKS+=	../../../../sys/dev/agp/${f} ${AGPDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
