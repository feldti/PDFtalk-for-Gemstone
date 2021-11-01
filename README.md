# PDFtalk-for-Gemstone
Library for reading and writing PDF files in Gemstone.

See the wiki page [PDFtalk for Gemstone](https://wiki.pdftalk.de/doku.php?id=pdftalk4gemstone) for details.

* **PDFtalk.gs** is the runtime library in Gemstone topaz source format

* **PDFtalkWithCMaps.gs** is the same with all standard CMaps included (needed to work with Asian texts)

* **PDFtalkTesting.gs** contains tests and demos

* **Report4PDF.gs** is the Report Writer of Bob Nemec based on the PDFtalk library

* **Report4PDFTest.gs** contains tests (which all fail unfortunately)

Some additional comments about loading:

```Bash
#!/bin/bash
#
#
# This application loads the Report4PDF package
#
#
usage() {
  cat <<HELP

USAGE: $(basename $0) <stone-name>
Loads all packages for the PDFTalk and the Report writing stuff

EXAMPLES
  $(basename $0)  <stonename>

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
  echo "ERROR: Kein PDFTalk zu installieren !"
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
```

