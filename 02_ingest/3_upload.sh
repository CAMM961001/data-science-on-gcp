#!/bin/bash

# Mensaje de uso en caso de faltar argumentos
if [ "$#" -ne 1 ]; then
    echo "Usage: ./3_upload.sh  [BUCKET]"
    exit
fi

# Asignar argumentos a variables
BUCKET=$1

# Cargar contenido a bucket de Cloud Storage
echo "Uploading to bucket $BUCKET..."
gsutil -m cp *.csv gs://$BUCKET/flights/raw/
