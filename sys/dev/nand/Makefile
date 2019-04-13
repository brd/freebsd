NANDDIR=	${INCLUDEDIR}/dev/nand
NAND=	nandsim.h \
	nand_dev.h

.if ${TYPE} == "copies"
FILESGROUPS+=	NAND
.endif
.if ${TYPE} == "symlinks"
.for f in ${NAND}
SYMLINKS+=	../../../../sys/dev/nand/${f} ${NANDDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
