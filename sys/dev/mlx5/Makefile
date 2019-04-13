MLX5DIR=	${INCLUDEDIR}/dev/mlx5
MLX5=	mlx5io.h

.if ${TYPE} == "copies"
FILESGROUPS+=	MLX5
.endif
.if ${TYPE} == "symlinks"
.for f in ${MLX5}
SYMLINKS+=	../../../../sys/dev/mlx5/${f} ${MLX5DIR}/${f}
.endfor
.endif

.include <bsd.prog.mk>
