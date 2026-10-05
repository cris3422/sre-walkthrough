#!/bin/sh
# Builds index.html (the standalone page GitHub Pages serves) from sre-walkthrough.html,
# which is the source and has no document skeleton of its own.
cd "$(dirname "$0")" || exit 1
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<style>*,*::before,*::after{box-sizing:border-box}html,body{margin:0;height:100%}[hidden]{display:none!important}</style>'
  cat sre-walkthrough.html
  printf '%s\n' '</html>'
} > index.html
