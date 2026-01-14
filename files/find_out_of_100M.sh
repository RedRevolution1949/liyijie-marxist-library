#!/bin/bash
find . -type f -size +99M -exec du -h {} \; | sort -rh
