EVDEVDIR=	${INCLUDEDIR}/dev/evdev
EVDEV=	input.h \
	input-event-codes.h \
	uinput.h

.if ${TYPE} == "copies"
FILESGROUPS+=	EVDEV
.endif
.if ${TYPE} == "symlinks"
.for f in ${EVDEV}
SYMLINKS+=	../../../../sys/dev/evdev/${f} ${EVDEVDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
