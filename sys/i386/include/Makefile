MACHINEDIR=	${INCLUDEDIR}/machine/include
MACHINE=	_align.h \
	_bus.h \
	_inttypes.h \
	_limits.h \
	_stdint.h \
	_types.h \
	acpica_machdep.h \
	apm_bios.h \
	apm_segments.h \
	asm.h \
	asmacros.h \
	atomic.h \
	bootinfo.h \
	bus_dma.h \
	bus.h \
	clock.h \
	counter.h \
	cpu.h \
	cpufunc.h \
	cputypes.h \
	cserial.h \
	db_machdep.h \
	dump.h \
	efi.h \
	elan_mmcr.h \
	elf.h \
	endian.h \
	exec.h \
	fdt.h \
	float.h \
	floatingpoint.h \
	frame.h \
	gdb_machdep.h \
	ieeefp.h \
	if_wl_wavelan.h \
	in_cksum.h \
	intr_machdep.h \
	ioctl_bt848.h \
	ioctl_meteor.h \
	iodev.h \
	kdb.h \
	limits.h \
	md_var.h \
	memdev.h \
	metadata.h \
	minidump.h \
	mp_watchdog.h \
	nexusvar.h \
	npx.h \
	ofw_machdep.h \
	param.h \
	pcb_ext.h \
	pcb.h \
	pci_cfgreg.h \
	pcpu.h \
	perfmon.h \
	pmap_base.h \
	pmap_nopae.h \
	pmap_pae.h \
	pmap.h \
	pmc_mdep.h \
	ppireg.h \
	proc.h \
	procctl.h \
	profile.h \
	psl.h \
	ptrace.h \
	pvclock.h \
	reg.h \
	reloc.h \
	resource.h \
	runq.h \
	segments.h \
	setjmp.h \
	sf_buf.h \
	sigframe.h \
	signal.h \
	smapi.h \
	smp.h \
	speaker.h \
	specialreg.h \
	stack.h \
	stdarg.h \
	sysarch.h \
	timerreg.h \
	trap.h \
	tss.h \
	ucontext.h \
	vdso.h \
	vm.h \
	vm86.h \
	vmparam.h

PCDIR=	${INCLUDEDIR}/machine/include
PC=	pc/bios.h \
	pc/display.h

.if ${TYPE} == "copies"
FILESGROUPS+=	MACHINE PC
.endif
.if ${TYPE} == "symlinks"
.for f in ${MACHINE} ${PC}
SYMLINKS+=	../../../sys/machine/include/${f} ${MACHINEDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
