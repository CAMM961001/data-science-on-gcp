#!/bin/bash

# Note that we have deleted the BTS website, and are instead
# using a mirror. This is because the BTS website is frequently down
SOURCE=https://storage.googleapis.com/data-science-on-gcp/edition2/raw

# Mensaje de uso en caso de faltar argumentos
if test "$#" -ne 2; then
   echo "Usage: ./download.sh [YEAR] [MONTH]"
   echo "   eg: ./download.sh 2015 1"
   exit
fi

# Asignación de argumentos a variables
YEAR=$1
MONTH=$2
# Mes en formato MM
MONTH2=$(printf "%02d" $MONTH)
BASEURL="${SOURCE}/On_Time_Reporting_Carrier_On_Time_Performance_1987_present"
echo -e "Downloading YEAR=$YEAR MONTH=$MONTH2 from:\n$BASEURL\n"

# Declarar directorio temporal y archivo zip
TMPDIR=$(mktemp -d)
ZIPFILE=${TMPDIR}/${YEAR}_${MONTH2}.zip

# Extraer URL a archivo zip
curl -o $ZIPFILE ${BASEURL}_${YEAR}_${MONTH}.zip

# Descomprimir zip en directorio temporal
unzip -d $TMPDIR $ZIPFILE

# Mover archivos csv descomprimidos a directorio raíz
mv $TMPDIR/*.csv ./${YEAR}${MONTH2}.csv

# Eliminar directorio temporal
rm -rf $TMPDIR
