MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	acpica_machdep.h \
	armreg.h \
	asm.h \
	atomic.h \
	bus_dma_impl.h \
	bus_dma.h \
	bus.h \
	clock.h \
	counter.h \
	cpu.h \
	cpufunc.h \
	db_machdep.h \
	debug_monitor.h \
	disassem.h \
	dump.h \
	efi.h \
	elf.h \
	endian.h \
	exec.h \
	float.h \
	floatingpoint.h \
	fpu.h \
	frame.h \
	hypervisor.h \
	ieeefp.h \
	ifunc.h \
	in_cksum.h \
	intr.h \
	iodev.h \
	kdb.h \
	machdep.h \
	md_var.h \
	memdev.h \
	metadata.h \
	minidump.h \
	ofw_machdep.h \
	param.h \
	pcb.h \
	pci_cfgreg.h \
	pcpu.h \
	pmap.h \
	pmc_mdep.h \
	proc.h \
	procctl.h \
	profile.h \
	psl.h \
	pte.h \
	ptrace.h \
	reg.h \
	reloc.h \
	resource.h \
	runq.h \
	setjmp.h \
	sf_buf.h \
	sigframe.h \
	signal.h \
	smp.h \
	stack.h \
	stdarg.h \
	sysarch.h \
	trap.h \
	ucontext.h \
	undefined.h \
	vdso.h \
	vfp.h \
	vm.h \
	vmparam.h

.if ${TYPE} == "copies"
FILESGROUPS+=	MACHINE
.endif
.if ${TYPE} == "symlinks"
.for f in ${MACHINE}
SYMLINKS+=	../../../sys/machine/include/${f} ${MACHINEDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
