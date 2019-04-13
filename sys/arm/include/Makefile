MACHINEDIR=	${INCLUDEDIR}/machine
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	acle-compat.h \
	armreg.h \
	asm.h \
	asmacros.h \
	atags.h \
	atomic-v4.h \
	atomic-v6.h \
	atomic.h \
	blockio.h \
	board.h \
	bus_dma.h \
	bus.h \
	clock.h \
	counter.h \
	cpu-v4.h \
	cpu-v6.h \
	cpu.h \
	cpufunc.h \
	cpuinfo.h \
	db_machdep.h \
	debug_monitor.h \
	disassem.h \
	dump.h \
	efi.h \
	elf.h \
	endian.h \
	exec.h \
	fdt.h \
	fiq.h \
	float.h \
	floatingpoint.h \
	frame.h \
	gdb_machdep.h \
	ieee.h \
	ieeefp.h \
	in_cksum.h \
	intr.h \
	kdb.h \
	limits.h \
	machdep.h \
	md_var.h \
	memdev.h \
	metadata.h \
	minidump.h \
	ofw_machdep.h \
	param.h \
	pcb.h \
	pcpu.h \
	physmem.h \
	pl310.h \
	platform.h \
	platformvar.h \
	pmap_var.h \
	pmap-v4.h \
	pmap-v6.h \
	pmap.h \
	pmc_mdep.h \
	proc.h \
	procctl.h \
	profile.h \
	psl.h \
	pte-v4.h \
	pte-v6.h \
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
	swi.h \
	sysarch.h \
	sysreg.h \
	trap.h \
	ucontext.h \
	undefined.h \
	utrap.h \
	vdso.h \
	vfp.h \
	vm.h \
	vmparam.h

PCDIR=	${INCLUDEDIR}/machine/pc
PC=	pc/bios.h \
	display.h

.if ${TYPE} == "copies"
FILESGROUPS+=	MACHINE PC
.endif
.if ${TYPE} == "symlinks"
.for f in ${MACHINE} ${PC}
SYMLINKS+=	../../../sys/machine/include/${f} ${MACHINEDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
