MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	asm.h \
	atomic.h \
	bus_dma.h \
	bus.h \
	clock.h \
	counter.h \
	cpu.h \
	cpufunc.h \
	db_machdep.h \
	dump.h \
	efi.h \
	elf.h \
	encoding.h \
	endian.h \
	exec.h \
	float.h \
	floatingpoint.h \
	fpe.h \
	frame.h \
	ieeefp.h \
	in_cksum.h \
	intr.h \
	kdb.h \
	machdep.h \
	md_var.h \
	memdev.h \
	minidump.h \
	ofw_machdep.h \
	param.h \
	pcb.h \
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
	riscvreg.h \
	runq.h \
	sbi.h \
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
	vdso.h \
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
