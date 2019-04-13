MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	altivec.h \
	asm.h \
	atomic.h \
	bat.h \
	bus_dma.h \
	bus.h \
	clock.h \
	counter.h \
	cpu.h \
	cpufunc.h \
	db_machdep.h \
	dbdma.h \
	dump.h \
	efi.h \
	elf.h \
	endian.h \
	exec.h \
	float.h \
	floatingpoint.h \
	fpu.h \
	frame.h \
	gdb_machdep.h \
	hid.h \
	ieee.h \
	ieeefp.h \
	in_cksum.h \
	intr_machdep.h \
	kdb.h \
	limits.h \
	machdep.h \
	md_var.h \
	memdev.h \
	metadata.h \
	mmuvar.h \
	ofw_machdep.h \
	openpicreg.h \
	openpicvar.h \
	param.h \
	pcb.h \
	pcpu.h \
	pio.h \
	platform.h \
	platformvar.h \
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
	rtas.h \
	runq.h \
	sc_machdep.h \
	setjmp.h \
	sigframe.h \
	signal.h \
	slb.h \
	smp.h \
	spr.h \
	sr.h \
	stack.h \
	stdarg.h \
	sysarch.h \
	tlb.h \
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
