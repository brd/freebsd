MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	asi.h \
	asm.h \
	asmacros.h \
	atomic.h \
	bus_common.h \
	bus_dma.h \
	bus_private.h \
	bus.h \
	cache.h \
	ccr.h \
	clock.h \
	cmt.h \
	counter.h \
	cpu.h \
	cpufunc.h \
	db_machdep.h \
	dcr.h \
	dump.h \
	efi.h \
	elf.h \
	endian.h \
	exec.h \
	fireplane.h \
	float.h \
	floatingpoint.h \
	fp.h \
	frame.h \
	fsr.h \
	gdb_machdep.h \
	idprom.h \
	ieee.h \
	ieeefp.h \
	in_cksum.h \
	instr.h \
	intr_machdep.h \
	iommureg.h \
	iommuvar.h \
	jbus.h \
	kdb.h \
	kerneldump.h \
	ktr.h \
	limits.h \
	lsu.h \
	mcntl.h \
	md_var.h \
	memdev.h \
	metadata.h \
	nexusvar.h \
	ofw_machdep.h \
	ofw_mem.h \
	ofw_nexus.h \
	param.h \
	pcb.h \
	pcpu.h \
	pmap.h \
	pmc_mdep.h \
	proc.h \
	procctl.h \
	profile.h \
	pstate.h \
	ptrace.h \
	reg.h \
	reloc.h \
	resource.h \
	runq.h \
	sc_machdep.h \
	setjmp.h \
	sf_buf.h \
	sigframe.h \
	signal.h \
	smp.h \
	stack.h \
	stdarg.h \
	sysarch.h \
	tick.h \
	tlb.h \
	trap.h \
	tsb.h \
	tstate.h \
	tte.h \
	ucontext.h \
	upa.h \
	utrap.h \
	vdso.h \
	ver.h \
	vm.h \
	vmparam.h \
	watch.h \
	wstate.h

.if ${TYPE} == "copies"
FILESGROUPS+=	MACHINE
.endif
.if ${TYPE} == "symlinks"
.for f in ${MACHINE}
SYMLINKS+=	../../../sys/machine/include/${f} ${MACHINEDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
