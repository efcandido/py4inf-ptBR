#!/usr/bin/env bash

startAt=$(date)

echo "Generating book"

rm *.tmp *.aux
latex book
makeindex book
latex book
dvipdf book.dvi book.pdf

echo Removed temporary files
rm -f book.aux book.ind book.ilg book.log book.dvi book.idx book.toc book.haux book.hind book.image.tex book.tmp book.idv book.4tc book.lg book.xref

echo "End (Start at: $startAt, End at: $(date))"
