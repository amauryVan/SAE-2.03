#!/bin/bash
pandoc Rendu.md annexes.md --toc --toc-depth=2 --number-sections -o  Rendu.html -s
