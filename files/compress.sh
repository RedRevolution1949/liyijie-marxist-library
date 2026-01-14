#!/bin/bash
find . -name '*.pdf'| parallel --lb -j 13 ocrmypdf --skip-text --output-type pdf --tesseract-timeout 0 -O 2 '{}' '{}'
