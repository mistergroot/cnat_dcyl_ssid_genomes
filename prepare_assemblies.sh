#!/bin/bash

for SPECIES in Colpophyllia_natans Dendrogyra_cylindrus Siderastrea_siderea; do
	zcat ./resources/${SPECIES}.annotations_proteinfer.?.txt.gz \
		> ./resources/${SPECIES}.annotations_proteinfer.txt
	zcat ./resources/${SPECIES}.scaffolds.?.fa.gz \
		> ./resources/${SPECIES}.scaffolds.fa
done
