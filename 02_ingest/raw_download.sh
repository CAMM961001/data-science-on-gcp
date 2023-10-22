#!/bin/bash

# Constantes
SOURCE=https://transtats.bts.gov/PREZIP
OUTDIR=raw

# Crear o reemplazar directorios
mkdir -p $OUTDIR

for YEAR in $(seq 2019 2019);
do
    for MONTH in $(seq 1 12);
    do
        # Armar URL de descarga
        FILE=On_Time_Reporting_Carrier_On_Time_Performance_1987_present_${YEAR}_${MONTH}.zip
        # GET UTR y almacenar
        curl -k -o ${OUTDIR}/${FILE} ${SOURCE}/${FILE}
    done
done
