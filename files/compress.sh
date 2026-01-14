#!/bin/bash
find . -name '*.pdf'| parallel --lb -j 13 ocrmypdf --skip-text --output-type pdf --tesseract-timeout 0 -O 3 --jbig2-lossy --jpeg-quality 1 --png-quality 1  '{}' '{}'
