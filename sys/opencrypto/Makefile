OPENCRYPTODIR=	${INCLUDEDIR}/crypto
OPENCRYPTO=	cast.h \
	castsb.h \
	cbc_mac.h \
	cryptodev.h \
	cryptosoft.h \
	deflate.h \
	gfmult.h \
	gmac.h \
	rmd160.h \
	skipjack.h \
	xform.h \
	xform_auth.h \
	xform_comp.h \
	xform_enc.h \
	xform_poly1305.h \
	xform_userland.h

.if ${TYPE} == "copies"
FILESGROUPS+=	OPENCRYPTO
.endif
.if ${TYPE} == "symlinks"
.for f in ${OPENCRYPTO}
SYMLINKS+=	../../../sys/opencrypto/${f} ${OPENCRYPTODIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
