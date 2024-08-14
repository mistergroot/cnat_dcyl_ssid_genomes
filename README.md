[![DOI](https://zenodo.org/badge/833782845.svg)](https://zenodo.org/doi/10.5281/zenodo.13323697)

# Genome assemblies and annotations of _Colpophyllia natans_, _Dendrogyra cylindrus_, and _Siderastrea siderea_

![alt text](https://github.com/mistergroot/cnat_dcyl_ssid_genomes/blob/main/banner.png?raw=true)

Here, we make available the code and genomic resources described in Locatelli and Baums 2024. These files describe the genomic resources for _Colpophyllia natans_, _Dendrogyra cylindrus_, and _Siderastrea siderea_. All tissue samples were collected in Curaçao in August of 2022 at Water Factory Reef (_Colpophyllia natans_) and Sea Aquarium Reef (_Dendrogyra cylindrus_ and _Siderastrea siderea_). Assemblies were generated using PacBio HiFi data generated on a Sequel IIe sequencer and assembled using hifiasm_meta.

In `jupyter_notebooks/`, we provide code for genome assembly, gene prediction, and functional annotation in Funannotate. Further, we provide code for figure generation, orthogroup analyses, and phylogenetically significant gene family expansion analyses (CAFE5).

In `resources/`, we provide highly contiguous, PacBio HiFi-derived genome assemblies (`.fa.gz`), proteins (`.proteins.fa.gz`), CDS transcripts (`.cds-transcripts.fa.gz`), mRNA transcripts (`.mrna-transcripts.fa.gz`), gene predictions (`.gff3.gz`), functional annotations (`.annotations_proteinfer.txt.gz`), and masks for repetitive content (`.repeats.bed.gz`). Functional annotation files output by Funannotate have been updated using [ProteInfer](https://elifesciences.org/articles/80942). Many genes do not get assigned functional annotations (PFAM, GO) straight out of Funannotate, so ProteInfer was used to ensure that all genes have some level of functional annotation, even if it's very high level. All functional annotations inferred with ProteInfer have been indicated as such in the annotation file. To get around GitHub file size restrictions, we provide the genome assemblies and genome annotation files in chunks. A script to prepare assemblies and annotations into single, usable references are included (`prepare_assemblies.sh`). By default, the contigs will not be sorted by size (but their names are ordered by size, e.g. contig_1 is the largest, followed by contig_2, and so forth). If this is something you need, you can do so using `sortbyname.sh` in the `BBmap` suite or another similar option.

In the assembly notebooks, you may notice that the paths include the name `acer`. The assembly process was very similar to that of _Acropora cervicornis_, described in [Locatelli et al., 2023](https://doi.org/10.1101/2023.12.22.573044). Acer was initially processed with the other species described here, but was spun off into a separate, more in-depth analysis.
