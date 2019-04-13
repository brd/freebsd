MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	abi.h \
	asm.h \
	atomic.h \
	bootinfo.h \
	bus_dma.h \
	bus.h \
	cache_mipsNN.h \
	cache_r4k.h \
	cache.h \
	cca.h \
	cdefs.h \
	clock.h \
	counter.h \
	cpu.h \
	cpufunc.h \
	cpuinfo.h \
	cpuregs.h \
	db_machdep.h \
	dump.h \
	efi.h \
	elf.h \
	endian.h \
	exec.h \
	fdt.h \
	float.h \
	floatingpoint.h \
	fls64.h \
	fpu.h \
	frame.h \
	gdb_machdep.h \
	hwfunc.h \
	ieee.h \
	ieeefp.h \
	in_cksum.h \
	intr_machdep.h \
	intr.h \
	kdb.h \
	limits.h \
	locore.h \
	md_var.h \
	memdev.h \
	metadata.h \
	minidump.h \
	mips_opcode.h \
	octeon_cop2.h \
	ofw_machdep.h \
	param.h \
	pcb.h \
	pcpu.h \
	pmap.h \
	pmc_mdep.h \
	proc.h \
	procctl.h \
	profile.h \
	pte.h \
	ptrace.h \
	reg.h \
	regdef.h \
	regnum.h \
	reloc.h \
	resource.h \
	runq.h \
	sc_machdep.h \
	setjmp.h \
	sf_buf.h \
	sigframe.h \
	signal.h \
	smp.h \
	stdarg.h \
	sysarch.h \
	tlb.h \
	tls.h \
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
