#!/bin/bash
#
#
# This application loads the Report4PDF package
#
# Special care must be taken. The base libraries has been
# changes because the PDFtalk loading topaz script leaves
# Gemstone/S in a state, that no further e.g. Monticello 
# packages could be loaded. That has been repaired.
#
# So the PDFtalk library ist loaded from the modified source
# from Christian Haider and the Report4PDF has been loaded 
# from Github.
#
# Another caution: You MUST load the testing libraries from
# PDFtalk - otherwise the reporting frmework will fail during
# runtime (do not know why)
#
usage() {
  cat <<HELP

USAGE: $(basename $0) <stone-name>
Loads the complete report4pdf package

EXAMPLES
  $(basename $0)  webcati

HELP
}

#
# Sind genuegend Parameter mitgegeben ...
#
if [ $# -ne 1 ]; then
  usage; exit 1
fi

export INSTALL_HOME=`pwd`
if [ ! -d ~/PDFtalk-for-Gemstone ]; then
  mkdir ~/PDFtalk-for-Gemstone
  cd ~
  git clone https://github.com/feldti/PDFtalk-for-Gemstone.git
fi
if [ -d ~/PDFtalk-for-Gemstone ]; then
  cd ~/PDFtalk-for-Gemstone
  git pull
fi
cd $INSTALL_HOME

#
# Umgebung setzen
#
cd
source $GS_HOME/bin/defGsDevKit.env
source $GS_HOME/server/stones/$1/defStone.env $1
if [ -s $GEMSTONE/seaside/etc/gemstone.secret ]; then
    . $GEMSTONE/seaside/etc/gemstone.secret
else
    echo 'Missing password file $GEMSTONE/seaside/etc/gemstone.secret'
    exit 1
fi

if [ -d ~/PDFtalk-for-Gemstone ]; then
  echo "PDFTalk wird installiert"
  cd ~/PDFtalk-for-Gemstone
  ./load_pdftalk.sh  $1
  ./load_pdftalktesting.sh  $1
  cd $INSTALL_HOME
else
  echo "ERROR: NO PDFTalk found !"
  exit 1
fi

cat << EOF | $GEMSTONE/bin/topaz -l -T 4000000
set user DataCurator pass $GEMSTONE_CURATOR_PASS gems $GEMSTONE_NAME
iferror where
login
%
doit
GsDeployer deploy: [
  Metacello new
    baseline: 'Report4PDF';
    repository: 'github://feldti/PDFtalk-for-Gemstone:master/repository';
    load: 'default' ].
%
commit
EOF

