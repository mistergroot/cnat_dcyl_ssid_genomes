# Genome assemblies and annotations of _Colpophyllia natans_, _Dendrogyra cylindrus_, and _Siderastrea siderea_

![alt text](https://github.com/mistergroot/cnat_dcyl_ssid_genomes/blob/main/banner.png?raw=true)

Here, we make available the code and genomic resources described in [Locatelli et al., 2023](https://doi.org/10.1101/2023.12.22.573044). These files describe the genomic resources for Florida _Acropora palmata_ sampled at Horseshoe Reef (genet HS1, STAGdb ID HG0004) and _Acropora cervicornis_ sampled from Grassy Key (genet M5, STAGdb ID HG0005). All tissue samples were generously provided by the Coral Restoration Foundation™ (CRF).

In `jupyter_notebooks/`, we provide code for _Acropora cervicornis_ (prefix `Acervicornis` in all files) genome assembly, gene prediction, and functional annotation in FunAnnotate. We additionally provide code for _Acropora palmata_ (prefix `Apalmata` in all files) and _Acropora cervicornis_ linkage map generation using LepWrap. Further, we provide code for some figure generation, whole genome alignments and dotplots, and phylogenetically significant gene family expansion analyses (CAFE5).

In `resources/`, we provide chromosome-level genome assemblies (`.fa.gz`), gene predictions (`.gff3.gz`), functional annotations (`.annotations.txt.gz`), masks for repetitive content (`.repeatmask.bed.gz`), and PLINK-formatted male, female, and sex-average genetic maps (`.map`) for _Acropora cervicornis_ and _Acropora palmata_. Please keep in mind that the assemblies and annotations for each species were generated in slightly different ways, as described in the manuscript. So not all files are identically formatted. Here, we've also included functional annotation files that have been updated using [ProteInfer](https://elifesciences.org/articles/80942). Many genes don't get assigned functional annotations (PFAM, GO) straight out of funannotate, so we used ProteInfer for ensure that all genes have some level of functional annotation, even if it's very high level. These annotations have the suffix `.annotations.proteinfer.txt.gz` and these are the annotations recommended for purposes such as GO enrichment analyses.

In `sanger_references/`, we provide gene predictions (`.gff3.gz`), functional annotations (`.annotations.txt.gz`), masks for repetitive content (`.repeatmask.bed.gz`), and PLINK-formatted sex-average genetic maps (`.map`) for the _Acropora palmata_ reference genome generated by the Sanger Institute (NCBI assembly jaAcrPala1.1; accession [GCA_964030605.1](https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_964030605.1/)). As of 7/19/2024, this assembly does not yet have an annotation available, which is why we have annotated this reference for internal use. This assembly is soft-masked on NCBI but the BED mask file itself is not publicly available. As such, we re-masked the assembly using our RepeatModeler libraries from our assembly so that we could use the mask to exclude repetitive regions from popgen datasets. The annotation process for this assembly is largely identical to that of the _Acropora cervicornis_ reference from [Locatelli et al., 2023](https://doi.org/10.1101/2023.12.22.573044). We additionally provide a BED-mask that shows which genes may be repeat proteins or transposon-derived (`.repetitive_genes.bed.gz`, contain >=90% repeat soft-masked bases), in case it is desireable to remove these genes from any analyses. As described above, we have also included a ProteInfer-supplemented annotation with suffix `.annotations.proteinfer.txt.gz`.
