#!/bin/bash
find . -type f -size +49M -exec du -h {} \; | sort -rh
