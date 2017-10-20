#!/bin/bash

IMG_DIR="./src/";
PNG_DIR="./dist/png/";
PDF_DIR="./dist/pdf/";
DPI="600";

for SVG  in ./${IMG_DIR}*.svg; do 
    filename="$( basename "${SVG}" )"
    #extension="${filename##*.}"
    PNG="${PNG_DIR}${filename%.*}.png"

    if [[ "${SVG}" -nt "${PNG}" ]]; then
        echo "${SVG}" is newer than "${PNG}": Exporting
        inkscape -D -z --export-dpi="${DPI}" --file="${SVG}" --export-png="${PNG}"
    else
        echo "${SVG}" is older than "${PNG}: Passing"
    fi
    
    PDF="${PDF_DIR}${filename%.*}.pdf"

    if [[ "${SVG}" -nt "${PDF}" ]]; then
        echo "${SVG}" is newer than "${PDF}": Exporting
        inkscape -D -z --export-dpi="${DPI}" --file="${SVG}" --export-pdf="${PDF}"
    else
        echo "${SVG}" is older than "${PDF}: Passing"
    fi
    
done

