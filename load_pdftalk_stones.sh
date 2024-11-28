#!/bin/bash
#
#
#
usage() {
  cat <<HELP

USAGE: $(basename $0) <db-name> <registry> [stonesDataHome]
Loads PDFTalk in Topaz Format

EAXMPLES
  $(basename $0) testdb work

HELP
}

if [ $# -lt 2 ]; then
  usage; exit 1
fi

# Assign parameters
stoneName=$1
registryName=$2
stonesDataHome=${3:-$STONES_DATA_HOME}

# Extract the value of 'stone_dir' from the .ston file
stone_dir=$(pas_datadir.sh $stoneName $registryName $stonesDataHome)
# Check the return code of the script
if [[ $? -eq 0 ]]; then
    echo "The script executed successfully."
else
    echo "The script failed with return code $?."
fi
if [[ -z "$stone_dir" ]]; then
    echo "Error: 'stone_dir' not found in $ston_file_path"
    exit 1
fi
source $stone_dir/customenv

if [ -s $GEMSTONE/seaside/etc/gemstone.secret ]; then
    . $GEMSTONE/seaside/etc/gemstone.secret
else
    echo 'Missing password file $GEMSTONE/seaside/etc/gemstone.secret'
    exit 1
fi

nowTS=`date +%Y-%m-%d-%H-%M`
cat << EOF | $GEMSTONE/bin/topaz -T 4000000 -l -u loadpdftalk  2>&1 >> loadPDFTalk_${nowTS}.log
set user DataCurator pass $GEMSTONE_CURATOR_PASS gems $stoneName
display oops
iferror where

login

input ./PDFtalk.gs
output pop
exit

%
EOF

