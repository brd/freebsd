#!/usr/local/bin/ksh93 -p
#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#

#
# Copyright (c) 2012,2013 Spectra Logic Corporation.  All rights reserved.
# Use is subject to license terms.
# 
# $Id: $
# $FreeBSD$

. $STF_SUITE/include/libtest.kshlib

################################################################################
#
# __stc_assertion_start
#
# ID: zfsd_degrade_001_pos
#
# DESCRIPTION: 
#   If a vdev experiences checksum errors, it will become degraded.
#       
#
# STRATEGY:
#   1. Create a storage pool.  Only use the file vdevs because it is easy to
#      generate checksum errors on them.
#   2. Mostly fill the pool with data.
#   3. Corrupt it by DDing to the underlying vdev
#   4. Verify that the vdev becomes DEGRADED.
#   5. ONLINE it and verify that it resilvers and joins the pool.
#
# TESTABILITY: explicit
#
# TEST_AUTOMATION_LEVEL: automated
#
# CODING STATUS: COMPLETED (2012-08-09)
#
# __stc_assertion_end
#
###############################################################################

verify_runnable "global"

VDEV0=${TMPDIR}/file0.${TESTCASE_ID}
VDEV1=${TMPDIR}/file1.${TESTCASE_ID}
VDEVS="${VDEV0} ${VDEV1}"
TESTFILE=/$TESTPOOL/testfile


function cleanup
{
	destroy_pool $TESTPOOL
	$RM -f $VDEVS
}

log_assert "ZFS will degrade a vdev that produces checksum errors"

log_onexit cleanup

log_must $MKFILE 100M ${VDEV0}
log_must $MKFILE 100M ${VDEV1}


for type in "raidz" "mirror"; do
	log_note "Testing raid type $type"

	create_pool $TESTPOOL $type ${VDEVS}

	# do some IO on the pool
	log_must $DD if=/dev/random of=$TESTFILE bs=1024 count=32768
	# Scribble on the underlying file to corrupt the vdev
	log_must $DD if=/dev/zero bs=1024k count=64 conv=notrunc of=$VDEV1

	# Scrub the pool to detect the corruption
	$SYNC
	log_must $ZPOOL scrub $TESTPOOL
	while is_pool_scrubbing $TESTPOOL ; do
		$SLEEP 2
	done

	# ZFSD can take up to 60 seconds to degrade an array in response to
	# errors (though it's usually faster).  
	for ((timeout=0; $timeout<10; timeout=$timeout+1)); do
		check_state $TESTPOOL "$VDEV1" "DEGRADED"
		degraded=$?
		if [[ $degraded == 0 ]]; then
			break
		fi
		$SLEEP 6
	done
	log_must $ZPOOL status $TESTPOOL
	log_must check_state $TESTPOOL "$VDEV1" "DEGRADED"

	destroy_pool $TESTPOOL
done

cleanup
log_pass

