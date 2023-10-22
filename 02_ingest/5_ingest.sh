#!/bin/bash

# Mensaje de uso en caso de faltar argumentos
if [ "$#" -ne 1 ]; then
    echo "Usage: ./5_ingest.sh  [BUCKET]"
    exit
fi

# Asignar argumentos a variables
export BUCKET=$1

# Ciclo de consultas por año por mes
for YEAR in `seq 2015 2015`;
do
   for MONTH in `seq 1 12`;
   do
      # Descargar datos con módulo de Bash
      bash 2_download.sh $YEAR $MONTH
      # Cargar datos a bucket con módulo de Bash
      bash 3_upload.sh $BUCKET
      # Limpiar memoria
      rm *.csv
   done
   # Carga a BigQuery con módulo de Bash
   bash 4_bqload.sh $BUCKET $YEAR
done


# Queries de confirmación de carga de datos
bq query --nouse_legacy_sql \
  'SELECT DISTINCT year, month FROM dsongcp.flights_raw ORDER BY year ASC, CAST(month AS INTEGER) ASC'

bq query --nouse_legacy_sql \
  'SELECT year, month, COUNT(*) AS num_flights FROM dsongcp.flights_raw GROUP BY year, month ORDER BY year ASC, CAST(month AS INTEGER) ASC'
