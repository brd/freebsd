MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	acpica_machdep.h \
	apicreg.h \
	apicvar.h \
	apm_bios.h \
	bus_dma.h \
	bus.h \
	busdma_impl.h \
	cputypes.h \
	dump.h \
	elf.h \
	endian.h \
	fdt.h \
	float.h \
	fpu.h \
	frame.h \
	ifunc.h \
	init.h \
	intr_machdep.h \
	legacyvar.h \
	mca.h \
	metadata.h \
	mptable.h \
	ofw_machdep.h \
	pci_cfgreg.h \
	procctl.h \
	psl.h \
	ptrace.h \
	pvclock.h \
	reg.h \
	segments.h \
	setjmp.h \
	sigframe.h \
	signal.h \
	specialreg.h \
	stack.h \
	stdarg.h \
	sysarch.h \
	trap.h \
	ucode.h \
	ucontext.h \
	vdso.h \
	vmware.h \
	x86_smp.h \
	x86_var.h

.if ${TYPE} == "copies"
FILESGROUPS+=	MACHINE
.endif
.if ${TYPE} == "symlinks"
.for f in ${MACHINE}
SYMLINKS+=	../../../sys/machine/include/${f} ${MACHINEDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
