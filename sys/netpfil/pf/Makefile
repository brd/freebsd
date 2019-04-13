PFDIR=	${INCLUDEDIR}/netpfil/pf
PF=	pf. \
	pf_altq.h \
	pf_mtag.h

.if ${TYPE} == "copies"
FILESGROUPS+=	PF
.endif
.if ${TYPE} == "symlinks"
.for f in ${PF}
SYMLINKS+=	../../../../sys/netpfil/pf/${f} ${INCLUDEDIR}/netpfil/pf/${f}
.endfor
.endif

.include <bsd.prog.mk>
