ATADIR=	${INCLUDEDIR}/cam/ata
ATA=	ata/ata_all.h

CTLDIR=	${INCLUDEDIR}/cam/ctl
CTL=	ctl/ctl.h \
	ctl/ctl_backend.h \
	ctl/ctl_debug.h \
	ctl/ctl_error.h \
	ctl/ctl_frontend.h \
	ctl/ctl_frontend_iscsi.h \
	ctl/ctl_ha.h \
	ctl/ctl_io.h \
	ctl/ctl_ioctl.h \
	ctl/ctl_private.h \
	ctl/ctl_scsi_all.h \
	ctl/ctl_tpc.h \
	ctl/ctl_util.h

MMCDIR=	${INCLUDEDIR}/cam/mmc
MMC=	mmc/mmc.h \
	mmc/mmc_all.h \
	mmc/mmc_bus.h

NVMEDIR=	${INCLUDEDIR}/cam/nvme
NVME=	nvme/nvme_all.h

SCSIDIR=	
SCSI=	scsi/scsi_all.h \
	scsi/scsi_cd.h \
	scsi/scsi_ch.h \
	scsi/scsi_da.h \
	scsi/scsi_enc.h \
	scsi/scsi_enc_internal.h \
	scsi/scsi_iu.h \
	scsi/scsi_message.h \
	scsi/scsi_pass.h \
	scsi/scsi_pt.h \
	scsi/scsi_sa.h \
	scsi/scsi_ses.h \
	scsi/scsi_sg.h \
	scsi/scsi_targetio.h \
	scsi/smp_all.h

.if ${TYPE} == "copies"
FILESGROUPS+=	ATA CTL MMC NVME
.endif
.if ${TYPE} == "symlinks"
.for f in ${ATA} ${CTL} ${MMC} ${NVME}
SYMLINKS+=	../../../../sys/cam/${f} ${INCLUDEDIR}/cam/${f}
.endfor
.endif

.include <bsd.prog.mk>
