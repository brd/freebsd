IPFILTERDIR=	${INCLUDEDIR}/netinet
IPFILTER=	ip_auth.h \
	ip_compat.h \
	ip_dstlist.h \
	ip_fil.h \
	ip_frag.h \
	ip_htable.h \
	ip_lookup.h \
	ip_nat.h \
	ip_pool.h \
	ip_proxy.h \
	ip_rules.h \
	ip_scan.h \
	ip_state.h \
	ip_sync.h \
	ipf_rb.h \
	ipl.h \
	radix_ipf.h

.if ${TYPE} == "copies"
FILESGROUPS+=	IPFILTER
.endif
.if ${TYPE} == "symlinks"
.for f in ${IPFILTER}
SYMLINKS+=	../../../sys/contrib/ipfilter/netinet/${f} ${IPFILTERDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
