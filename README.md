# Genome assemblies and annotations of _Colpophyllia natans_, _Dendrogyra cylindrus_, and _Siderastrea siderea_

![alt text](https://github.com/mistergroot/cnat_dcyl_ssid_genomes/blob/main/banner.png?raw=true)

Here, we make available the code and genomic resources described in Locatelli et al., 2024. These files describe the genomic resources for _Colpophyllia natans_, _Dendrogyra cylindrus_, and _Siderastrea siderea_. All tissue samples were collected in Curaçao.

In `jupyter_notebooks/`, we provide code for genome assembly, gene prediction, and functional annotation in Funannotate. Further, we provide code for some figure generation, orthogroup analyses, and phylogenetically significant gene family expansion analyses (CAFE5).

In `resources/`, we provide highly contiguous, PacBio HiFi-derived genome assemblies (`.fa.gz`), proteins (`.proteins.fa.gz`), CDS transcripts (`.cds-transcripts.fa.gz`), mRNA transcripts (`.mrna-transcripts.fa.gz`), gene predictions (`.gff3.gz`), functional annotations (`.annotations_proteinfer.txt.gz`), and masks for repetitive content (`.repeats.bed.gz`). Functional annotation files output by Funannotate have been updated using [ProteInfer](https://elifesciences.org/articles/80942). Many genes do not get assigned functional annotations (PFAM, GO) straight out of Funannotate, so ProteInfer was used to ensure that all genes have some level of functional annotation, even if it's very high level. All functional annotations inferred with ProteInfer have been indicated as such in the annotation file.
