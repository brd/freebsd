PCIDIR=	${INCLUDEDIR}/dev/pci
PCI=	pcireg.h

.if ${TYPE} == "copies"
FILESGROUPS+=	PCI
.endif
.if ${TYPE} == "symlinks"
.for f in ${PCI}
SYMLINKS+=	../../../../sys/dev/pci/${f} ${PCIDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
