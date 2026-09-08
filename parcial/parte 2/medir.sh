#!/bin/bash
URL="http://192.168.50.3"

echo "=== PRUEBAS DE COMPRESIÓN ==="
for archivo in index.html estilo.css script.js datos.json; do
    echo "--- Probando: $archivo ---"
    echo "Sin compresión:"
    curl -s -H "Accept-Encoding: identity" -o /dev/null -w "  Tamaño: %{size_download} B | Tiempo: %{time_total}s\n" $URL/$archivo
    
    echo "Con Gzip:"
    curl -s -H "Accept-Encoding: gzip" -o /dev/null -w "  Tamaño: %{size_download} B | Tiempo: %{time_total}s\n" $URL/$archivo
    
    echo "Con Brotli:"
    curl -s -H "Accept-Encoding: br" -o /dev/null -w "  Tamaño: %{size_download} B | Tiempo: %{time_total}s\n" $URL/$archivo
done
