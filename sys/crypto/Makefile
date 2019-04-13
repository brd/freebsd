CRYPTODIR=	${INCLUDEDIR}/crypto
CRYPTO=	intake.h \
	rijndael/rijndael.h \
	sha1.h

.if ${TYPE} == "copies"
FILESGROUPS+=	CRYPTO
.endif
.if ${TYPE} == "symlinks"
.for f in ${CRYPTO}
SYMLINKS+=	../../../sys/crypto/${f} ${CRYPTODIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
