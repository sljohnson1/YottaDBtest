#!/usr/local/bin/tcsh -f
#
echo "C9D06-002269 TP Rollback memory corruption test"
$gtm_tst/com/dbcreate.csh mumps 1
echo "mupip set -journal=enable,[no]before -region *"
$MUPIP set $tst_jnl_str -region "*" >&! jnl_on.log
$grep "GTM-I-JNLSTATE" jnl_on.log
echo "mumps -r tprlbkn"
$gtm_exe/mumps -r tprlbkn
echo "Verifying data:"
$gtm_exe/mumps -r dverify^tprlbkn
echo "mupip journal -extract -forward mumps.mjl"
$MUPIP journal -extract -forward mumps.mjl
set jnlextract = $status
if ( 0 == $jnlextract ) then
	echo "Test PASSED"
else
	echo "Test FAILED"
endif
$gtm_tst/com/dbcheck.csh 
