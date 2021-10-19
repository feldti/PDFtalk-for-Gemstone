#!/bin/bash
#
# This script loads 
#
#
usage() {
  cat <<HELP

USAGE: $(basename $0) <db-name>
Starts a mark for collection

EAXMPLES
  $(basename $0) webcati6

HELP
}

if [ $# -ne 1 ]; then
  usage; exit 1
fi

CURRENTDIR=`pwd`

#
# In einer CROM-Umgebung ist zumindestens der $HOME gesetzt
#
cd $HOME
if [ ! -d "GsDevKit_home" ]; then
   echo "Es gibt kein GsDevKit_home Verzeichnis"
   exit 1
fi
cd GsDevKit_home
export GS_HOME=`pwd`
export PATH=$GS_HOME/bin:$PATH

source $GS_HOME/bin/defGsDevKit.env
source $GS_HOME/server/stones/$1/defStone.env $1
if [ -s $GEMSTONE/seaside/etc/gemstone.secret ]; then
    . $GEMSTONE/seaside/etc/gemstone.secret
else
    echo 'Missing password file $GEMSTONE/seaside/etc/gemstone.secret'
    exit 1
fi
nowTS=`date +%Y-%m-%d-%H-%M`

cat << EOF | $GEMSTONE/bin/topaz -T 4000000 -l -u loadpdftalk  2>&1 >> $CURRENTDIR/loadreport4pdftesting_${nowTS}.log
set user DataCurator pass $GEMSTONE_CURATOR_PASS gems $GEMSTONE_NAME
display oops
iferror where

login
input $CURRENTDIR/Report4PDFTest.gs
exit

%
EOF

