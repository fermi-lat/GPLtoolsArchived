# echo "Setting GPLtools v1r10 in /home/focke/cvs"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/slac/g/glast/applications/CMT/v1r18p20061003
endif
source ${CMTROOT}/mgr/setup.csh

set tempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set tempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=GPLtools -version=v1r10 -path=/home/focke/cvs  -no_cleanup $* >${tempfile}; source ${tempfile}
/bin/rm -f ${tempfile}

