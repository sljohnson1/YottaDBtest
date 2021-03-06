#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2003-2016 Fidelity National Information		#
# Services, Inc. and/or its subsidiaries. All rights reserved.	#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################
######################################################################
# manually_start.csh                                                 #
# all subtests in this test are automated, but won't run as part of  #
# the daily/weekly cycle. The tests here will be started manually in #
# a controlled fashion, e.g. during the regression testing phase for #
# a major release.                                                   #
######################################################################
#
# gds_max_blk	[s7kr] Testing GDS max number of blocks to 224M and for older V5 version, test for 128M blocks.
# ossmake	[shaha] Test the makefile builds regularly so that we know when they break
# maxtrignames	[shaha] Test that adds 999,999 triggers with auto generated names
# gtm8416	[partridger] Verify 1 second HANG between global SETs ensures that each journal record falls in a different second
#				The above test is manually started because takes a long time, but it's not computationally intensive
# sem_counter	[base]  Launch over 32K processes and ensure they can connect to the database if -qdbrundown is on

setenv subtest_list_common "4g_journal align_string"
setenv subtest_list_non_replic "4g_dbcertify alsmemleak largelibtest gds_max_blk maxtrignames ossmake"
setenv subtest_list_non_replic "$subtest_list_non_replic gtm8416 sem_counter"
setenv subtest_list_replic ""

if ($?test_replic == 1) then
	if ($gtm_test_tp == "TP" ) then
		setenv subtest_list_common "$subtest_list_common dual_fail2_no_ipcrm1 dual_fail2_no_ipcrm2 dual_fail3_nonsym"
	else
		setenv subtest_list_common "$subtest_list_common"
	endif
	setenv subtest_list "$subtest_list_replic $subtest_list_common"
else
	setenv subtest_list "$subtest_list_common $subtest_list_non_replic"
endif

# EXCLUSIONS
setenv subtest_exclude_list ""

# Disable triggers on platform which don't support it (like HPPA)
if ($gtm_platform_triggers_support == 0) then
	setenv subtest_exclude_list "$subtest_exclude_list maxtrignames"
endif

## Disable align_string testing until string alignment is handled completely
setenv subtest_exclude_list "$subtest_exclude_list align_string"

## Disale 4g_dbcertify on platforms without a V4 version
if ($?gtm_platform_no_V4) then
	setenv subtest_exclude_list "$subtest_exclude_list 4g_dbcertify"
endif

## Disable largelibtest on non-64-bit machines and machine too small to run it
set hostn = $HOST:r:r:r
if (($gtm_platform_size != 64) || ("lespaul" == "$hostn") || ("snail" == "$hostn") || ("turtle" == "$hostn") || ("OS/390" == "$HOSTOS")) then
	setenv subtest_exclude_list "$subtest_exclude_list largelibtest"
endif

## Disable sem_counter everywhere but sphere. It is the only server capable of launching 32 processes without coming to a near-halt
if ("sphere" != "$hostn") then
	setenv subtest_exclude_list "$subtest_exclude_list sem_counter"
endif

# CMake builds have not been successful on HPUX + AIX and z/OS has not been tested
if (("hp-ux" == "$gtm_test_osname") || ("aix" == "$gtm_test_osname") || ("os390" == "$gtm_test_osname")) then
	setenv subtest_exclude_list	"$subtest_exclude_list ossmake"
endif

$gtm_tst/com/submit_subtest.csh
echo "Manually_Start tests DONE."
