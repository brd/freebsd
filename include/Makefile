#	@(#)Makefile	8.2 (Berkeley) 1/4/94
# $FreeBSD$
#
# Doing a "make install" builds /usr/include.

.include <src.opts.mk>

PACKAGE=runtime
TAGS+=	development
CLEANFILES= osreldate.h version
SUBDIR= arpa protocols rpcsvc rpc xlocale
SUBDIR_PARALLEL=
INCS=	a.out.h ar.h assert.h bitstring.h complex.h cpio.h _ctype.h ctype.h \
	db.h \
	dirent.h dlfcn.h elf.h elf-hints.h err.h fmtmsg.h fnmatch.h fstab.h \
	fts.h ftw.h getopt.h glob.h grp.h \
	ieeefp.h ifaddrs.h \
	inttypes.h iso646.h kenv.h langinfo.h libgen.h limits.h link.h \
	locale.h malloc.h malloc_np.h memory.h monetary.h mpool.h mqueue.h \
	ndbm.h netconfig.h \
	netdb.h nl_types.h nlist.h nss.h nsswitch.h paths.h \
	printf.h proc_service.h pthread.h \
	pthread_np.h pwd.h ranlib.h readpassphrase.h regex.h \
	res_update.h resolv.h runetype.h search.h semaphore.h setjmp.h \
	signal.h spawn.h stab.h stdalign.h stdbool.h stddef.h \
	stdnoreturn.h stdio.h stdlib.h string.h stringlist.h \
	strings.h sysexits.h tar.h termios.h tgmath.h \
	time.h timeconv.h timers.h ttyent.h \
	uchar.h ulimit.h unistd.h utime.h utmpx.h uuid.h varargs.h \
	wchar.h wctype.h wordexp.h xlocale.h

.PATH: ${SRCTOP}/contrib/libc-vis
INCS+=	vis.h

MHDRS=	float.h floatingpoint.h stdarg.h

PHDRS=	sched.h _semaphore.h

LHDRS=	aio.h errno.h fcntl.h linker_set.h poll.h stdatomic.h stdint.h \
	syslog.h ucontext.h

LDIRS=	bsm cam geom net net80211 netgraph netinet netinet6 \
	netipsec netsmb nfs nfsclient nfsserver sys vm

LSUBDIRS= \
	geom/cache geom/concat geom/eli geom/gate geom/journal geom/label \
	geom/mirror geom/mountver geom/multipath geom/nop \
	geom/raid geom/raid3 geom/shsec geom/stripe geom/virstor \
	net/altq \
	netgraph/atm netgraph/netflow \
	netinet/cc \
	netinet/netdump \
	security/audit \
	security/mac_biba security/mac_bsdextended security/mac_lomac \
	security/mac_mls security/mac_partition \
	security/mac_veriexec \
	sys/disk \
	ufs/ffs ufs/ufs

LSUBSUBDIRS=	dev/mpt/mpilib

.if ${MK_BLUETOOTH} != "no"
LSUBSUBDIRS+=	netgraph/bluetooth/include
.endif

.if ${MK_CUSE} != "no"
LSUBDIRS+=	fs/cuse
.endif

.if ${MK_GSSAPI} != "no"
SUBDIR+=	gssapi
INCS+=		gssapi.h
.endif

.if ${MK_HESIOD} != "no"
INCS+=	hesiod.h
.endif

# Handle the #define aliases for libiconv
.if ${MK_ICONV} == "yes"
INCS+=		iconv.h
.endif

# Define SHARED to indicate whether you want symbolic links to the system
# source (``symlinks''), or a separate copy (``copies'').  ``symlinks'' is
# probably only useful for developers and should be avoided if you do not
# wish to tie your /usr/include and /usr/src together.
#SHARED=	symlinks
SHARED?=	copies

INCS+=	osreldate.h

SYSDIR=			${SRCTOP}/sys
NEWVERS_SH=		${SYSDIR}/conf/newvers.sh
PARAM_H=		${SYSDIR}/sys/param.h
MK_OSRELDATE_SH=	${.CURDIR}/mk-osreldate.sh

SYMLINKS+= ${LIBDIR:C,[^/]+,..,g:C,^/,,}${INCLUDEDIR} ${LIBDIR}/include

osreldate.h: ${NEWVERS_SH} ${PARAM_H} ${MK_OSRELDATE_SH}
	env NEWVERS_SH=${NEWVERS_SH} PARAMFILE=${PARAM_H} SYSDIR=${SYSDIR} \
	    sh ${MK_OSRELDATE_SH}

.for i in ${LHDRS}
INCSLINKS+=	sys/$i ${INCLUDEDIR}/$i
.endfor
.for i in ${MHDRS}
INCSLINKS+=	machine/$i ${INCLUDEDIR}/$i
.endfor
.for i in ${PHDRS}
INCSLINKS+=	sys/$i ${INCLUDEDIR}/$i
.endfor

.if ${MACHINE} != ${MACHINE_CPUARCH}
_MARCHS=	${MACHINE_CPUARCH}
.endif
.if ${MACHINE_CPUARCH} == "i386" || ${MACHINE_CPUARCH} == "amd64"
_MARCHS+=	x86
.endif

META_TARGETS+=	compat
stage_includes: ${SHARED}
SDESTDIR=	${SYSROOT:U${DESTDIR}}

# Take care of stale directory-level symlinks.
compat:
.for i in ${LDIRS} ${LSUBDIRS} machine ${_MARCHS} crypto
	if [ -L ${SDESTDIR}${INCLUDEDIR}/$i ]; then \
		rm -f ${SDESTDIR}${INCLUDEDIR}/$i; \
	fi
.endfor

copies: .PHONY .META
	${MAKE} -C ${SRCTOP}/sys/cam/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.if ${MK_CDDL} != "no"
	${MAKE} -C ${SRCTOP}/sys/cddl/contrib/opensolaris/uts/common/sys/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
.if ${MK_IPFILTER} != "no"
	${MAKE} -C ${SRCTOP}/sys/contrib/ipfilter/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
	${MAKE} -C ${SRCTOP}/sys/crypto/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/acpica/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/agp/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/bktr/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/evdev/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/hyperv/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/pci/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.if ${MK_MLX5TOOL} != "no"
	${MAKE} -C ${SRCTOP}/sys/dev/mlx5/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
.if ${MK_NAND} != "no"
	${MAKE} -C ${SRCTOP}/sys/dev/nand/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
	${MAKE} -C ${SRCTOP}/sys/dev/veriexec/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/fs/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/${MACHINE}/include/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/netpfil/pf/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/opencrypto/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/rpc/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/teken/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.for i in ${LDIRS} ${LSUBDIRS} ${LSUBSUBDIRS} machine machine/pc \
	${_MARCHS}
	if [ -d ${SDESTDIR}${INCLUDEDIR}/$i ]; then \
		cd ${SDESTDIR}${INCLUDEDIR}/$i; \
		for h in *.h; do \
			if [ -L $$h ]; then rm -f $$h; fi; \
		done; \
	fi
.endfor
.for i in ${LDIRS} ${LSUBDIRS} ${LSUBSUBDIRS}
	cd ${SRCTOP}/sys; \
	${INSTALL} -C ${TAG_ARGS} -o ${BINOWN} -g ${BINGRP} -m 444 $i/*.h \
	    ${SDESTDIR}${INCLUDEDIR}/$i
.endfor
.for _MARCH in ${_MARCHS}
.if exists(${SRCTOP}/sys/${_MARCH}/include)
	${INSTALL} -d ${TAG_ARGS} -o ${BINOWN} -g ${BINGRP} -m 755 \
	    ${SDESTDIR}${INCLUDEDIR}/${_MARCH}; \
	cd ${SRCTOP}/sys/${_MARCH}/include; \
	${INSTALL} -C ${TAG_ARGS} -o ${BINOWN} -g ${BINGRP} -m 444 *.h \
	    ${SDESTDIR}${INCLUDEDIR}/${_MARCH}
.endif
.endfor

symlinks: .PHONY .META
	@${ECHO} "Setting up symlinks to kernel source tree..."
	${MAKE} -C ${SRCTOP}/sys/cam/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.if ${MK_CDDL} != "no"
	${MAKE} -C ${SRCTOP}/sys/cddl/contrib/opensolaris/uts/common/sys/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
.if ${MK_IPFILTER} != "no"
	${MAKE} -C ${SRCTOP}/sys/contrib/ipfilter/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
	${MAKE} -C ${SRCTOP}/sys/crypto/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/acpica/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/agp/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/bktr/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/evdev/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/hyperv/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/dev/pci/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.if ${MK_MLX5TOOL} != "no"
	${MAKE} -C ${SRCTOP}/sys/dev/mlx5/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
.if ${MK_NAND} != "no"
	${MAKE} -C ${SRCTOP}/sys/dev/nand/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.endif
	${MAKE} -C ${SRCTOP}/sys/dev/veriexec/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/fs/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/${MACHINE}/include/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/netpfil/pf/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/opencrypto/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/rpc/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
	${MAKE} -C ${SRCTOP}/sys/teken/ install TYPE=${.TARGET} DESTDIR=${SDESTDIR}
.for i in ${LDIRS}
	cd ${SRCTOP}/sys/$i; \
	for h in *.h; do \
		${INSTALL_SYMLINK} ${TAG_ARGS} ../../../sys/$i/$$h ${SDESTDIR}${INCLUDEDIR}/$i; \
	done
.endfor
.for i in ${LSUBDIRS}
	cd ${SRCTOP}/sys/$i; \
	for h in *.h; do \
		${INSTALL_SYMLINK} ${TAG_ARGS} ../../../../sys/$i/$$h ${SDESTDIR}${INCLUDEDIR}/$i; \
	done
.endfor
.for i in ${LSUBSUBDIRS}
	cd ${SRCTOP}/sys/$i; \
	for h in *.h; do \
		${INSTALL_SYMLINK} ${TAG_ARGS} ../../../../../sys/$i/$$h ${SDESTDIR}${INCLUDEDIR}/$i; \
	done
.endfor
.for _MARCH in ${_MARCHS}
.if exists(${SRCTOP}/sys/${_MARCH}/include)
	${INSTALL} -d ${TAG_ARGS} -o ${BINOWN} -g ${BINGRP} -m 755 \
	    ${SDESTDIR}${INCLUDEDIR}/${_MARCH}; \
	cd ${SRCTOP}/sys/${_MARCH}/include; \
	for h in *.h; do \
		${INSTALL_SYMLINK} ${TAG_ARGS} ../../../sys/${_MARCH}/include/$$h \
		    ${SDESTDIR}${INCLUDEDIR}/${_MARCH}; \
	done
.if exists(${SRCTOP}/sys/${_MARCH}/include/pc)
	${INSTALL} -d ${TAG_ARGS} -o ${BINOWN} -g ${BINGRP} -m 755 \
	    ${SDESTDIR}${INCLUDEDIR}/${_MARCH}/pc; \
	cd ${SRCTOP}/sys/${_MARCH}/include/pc; \
	for h in *.h; do \
		${INSTALL_SYMLINK} ${TAG_ARGS} ../../../../sys/${_MARCH}/include/pc/$$h \
		    ${SDESTDIR}${INCLUDEDIR}/${_MARCH}/pc; \
	done
.endif
.endif
.endfor

.include <bsd.prog.mk>

installincludes: ${SHARED}
${SHARED}: compat

.if ${MACHINE} == "host" && !defined(_SKIP_BUILD)
# we're here because we are building a sysroot...
# we need MACHINE et al set correctly
HOST_MACHINE!= uname -m
HOST_MACHINE_ARCH!= uname -p
MACHINE:= ${HOST_MACHINE}
MACHINE_ARCH:= ${HOST_MACHINE_ARCH}
.endif
