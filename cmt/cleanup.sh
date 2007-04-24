if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/slac.stanford.edu/g/glast/applications/CMT/v1r16p20040701; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
tempfile=`${CMTROOT}/mgr/cmt build temporary_name -quiet`
if test ! $? = 0 ; then tempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt -quiet cleanup -sh -pack=GPLtools -version=v0r6 -path=/afs/slac.stanford.edu/u/ec/dragon/glast $* >${tempfile}; . ${tempfile}
/bin/rm -f ${tempfile}

