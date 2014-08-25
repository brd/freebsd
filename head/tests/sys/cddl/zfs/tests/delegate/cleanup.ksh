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
# Copyright 2007 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)cleanup.ksh	1.1	07/01/09 SMI"
#

. $STF_SUITE/tests/delegate/delegate_common.kshlib

$ZFS 2>&1 | $GREP "allow" > /dev/null
(($? != 0)) && log_unsupported

cleanup_user_group

# restore the state of svc:/network/nis/client:default
if [[ -e $NISSTAFILE ]]; then
	log_must $SVCADM enable svc:/network/nis/client:default
	log_must $RM -f $NISSTAFILE
fi

default_cleanup
