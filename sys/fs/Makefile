AUTOFSDIR=	${INCLUDEDIR}/machine/include
AUTOFS=	autofs/autofs_ioctl.h \
	autofs/autofs.h

CD9660=	cd9660/cd9660_mount.h \
	cd9660/cd9660_node.h \
	cd9660/cd9660_rrip.h \
	cd9660/iso_rrip.h \
	cd9660/iso.h

CUSE=	cuse/cuse_defs.h \
	cuse/cuse_ioctl.h

DEVFS=	devfs/devfs_int.h \
	devfs/devfs.h

EXT2FS=	ext2fs/ext2_acl.h \
	ext2fs/ext2_dinode.h \
	ext2fs/ext2_dir.h \
	ext2fs/ext2_extattr.h \
	ext2fs/ext2_extents.h \
	ext2fs/ext2_extern.h \
	ext2fs/ext2_mount.h \
	ext2fs/ext2fs.h \
	ext2fs/fs.h \
	ext2fs/htree.h \
	ext2fs/inode.h

FDESCFS=	fdescfs/fdesc.h

FUSE=	fuse/fuse_debug.h \
	fuse/fuse_file.h \
	fuse/fuse_internal.h \
	fuse/fuse_io.h \
	fuse/fuse_ipc.h \
	fuse/fuse_kernel.h \
	fuse/fuse_node.h \
	fuse/fuse_param.h \
	fuse/fuse.h

MSDOSFS=	msdosfs/bootsect.h \
	msdosfs/bpb.h \
	msdosfs/denode.h \
	msdosfs/direntry.h \
	msdosfs/fat.h \
	msdosfs/msdosfsmount.h

NANDFS=	nandfs/bmap.h \
	nandfs/nandfs_fs.h \
	nandfs/nandfs_mount.h \
	nandfs/nandfs_subr.h \
	nandfs/nandfs.h

NFS=	nfs/nfs_var.h \
	nfs/nfs.h \
	nfs/nfscl.h \
	nfs/nfsclstate.h \
	nfs/nfsdport.h \
	nfs/nfskpiport.h \
	nfs/nfsm_subs.h \
	nfs/nfsport.h \
	nfs/nfsproto.h \
	nfs/nfsrvcache.h \
	nfs/nfsrvstate.h \
	nfs/nfsv4_errstr.h \
	nfs/rpcv2.h \
	nfs/xdr_subs.h

NFSCLIENT=	nfsclient/nfs_kdtrace.h \
	nfsclient/nfs.h \
	nfsclient/nfsmount.h \
	nfsclient/nfsnode.h \
	nfsclient/nlminfo.h

NFSSERVER=	nfsserver/nfs_fha_new.h

NULLFS=	nullfs/null.h

PROCFS=	procfs/procfs.h

PSEUDOFS=	pseudofs/pseudofs_internal.h \
	pseudofs/pseudofs.h

SMBFS=	smbfs/smbfs_node.h \
	smbfs/smbfs_subr.h \
	smbfs/smbfs.h

TMPFS=	tmpfs/tmpfs_fifoops.h \
	tmpfs/tmpfs_vnops.h \
	tmpfs/tmpfs.h

UDF=	udf/ecma167-udf.h \
	udf/osta.h \
	udf/udf_mount.h \
	udf/udf.h

UNIONFS=	unionfs/union.h

.if ${TYPE} == "copies"
FILESGROUPS+=	AUTOFS CD9660 CUSE DEVFS EXT2FS FDESCFS FUSE MSDOSFS NANDFS NFS NFSCLIENT NFSSERVER NULLFS PROCFS PSEUDOFS SMBFS TMPFS UDF UNIONFS
.endif
.if ${TYPE} == "symlinks"
.for f in ${AUTOFS} ${CD9600} ${CUSE} ${DEVFS} ${EXT2FS} ${FDESCFS} ${FUSE} ${MSDOSFS} ${NANDFS} ${NFS} ${NFSCLIENT} ${NFSSERVER} ${NULLFS} ${PROCFS} ${PSEUDOFS} ${SMBFS} ${TMPFS} ${UDF} ${UNIONFS}
SYMLINKS+=	../../../sys/machine/include/${f} ${AUTOFSDIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
