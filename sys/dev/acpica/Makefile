ACPICADIR=	${INCLUDEDIR}/dev/acpica
ACPICA=	acpiio.h \
	acpi_hpet.h

.if ${TYPE} == "copies"
FILESGROUPS+=	ACPICA
.endif
.if ${TYPE} == "symlinks"
.for f in ${ACPICA}
SYMLINKS+=	../../../../sys/dev/acpica/${f} ${ACPICADIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
