#!/bin/sh
find . -name "*.html" -print0 | xargs -0 zip htmls.zip

