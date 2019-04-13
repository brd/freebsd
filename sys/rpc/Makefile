RPCDIR=	${INCLUDEDIR}/sys/rpc
RPC=	types.h

.if ${TYPE} == "copies"
FILESGROUPS+=	RPC
.endif
.if ${TYPE} == "symlinks"
.for f in ${RPC}
SYMLINKS+=	../../../sys/rpc/${f} ${RPCDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
