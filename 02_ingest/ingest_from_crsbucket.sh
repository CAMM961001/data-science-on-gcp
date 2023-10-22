#!/bin/bash

# Mensaje de uso en caso de faltar argumentos
if [ "$#" -ne 1 ]; then
    echo "Usage: ./ingest_from_crsbucket.sh  destination-bucket-name"
    exit
fi

# Asignar argumentos a variables
BUCKET=$1
FROM=gs://data-science-on-gcp/edition2/flights/raw
TO=gs://$BUCKET/flights/raw

# Instrucción genérica de google para copiar buckets
CMD="gsutil -m cp "

# Ciclo para copiar info de un bucket a otro
for MONTH in `seq -w 1 12`;
do
  CMD="$CMD ${FROM}/2015${MONTH}.csv"
done

CMD="$CMD ${FROM}/201601.csv $TO"

echo $CMD
$CMD
