# BIO 410 Final Project
## Background
The data consist of 6 samples from the organism of Ebola virus. This organism is a fatal viral hemorrhagic illness which due to infection with the Ebola virus of the Filoviridae family. The illness occurs due to a virus infection and has been a universal public health threat since its discovery in 1976. There exists no specific treatment protocol for EVD and only supportive and symptomatic therapy is the line of treatment[Saeed S, Hasan S, Ahmad S, Masood R. 2019. Ebola Virus: A Global Public Health Menace: A Narrative Review. Journal of Family Medicine and Primary Care. 8(7):2189–2201. doi:https://doi.org/10.4103/jfmpc.jfmpc_297_19. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6691429/.].

## Purpose
The purpose of this project was to create a phylogenetic tree from 6 samples of Ebola virus in order to determine the evolutionary relationships between the samples.


## Methods
Raw paired-end sequencing reads generated via next-generation sequencing (NGS) are stored in the georg/ folder. These reads were assembled into contigs using MEGAHIT, a fast and memory-efficient assembler for NGS data, with each of the 6 samples assembled separately; the resulting assemblies are stored in the t1_out/ through t6_out/ folders, where the key output file in each is final.contigs.fa. Contigs under 5000 bp were filtered out to retain only complete or near-complete genome sequences. The remaining contigs were aligned using the AlignSeqs function from the DECIPHER package in R, with the alignment saved as alignment.html. A maximum likelihood (ML) phylogenetic tree was then constructed from the alignment using the Treeline function, also from the DECIPHER package in R, and is saved as Rplot01.
## Results

Here is the phylogenetic tree:


<img width="861" height="516" alt="Rplot01" src="https://github.com/user-attachments/assets/3250d305-6c47-4640-8cd0-3011dd9d97c7" />


Explain
Based on my results it seems like the 6 Ebola virus samples show 2 distinct evolutionary lineages. Samples 2 and 3 form one cluster on one branch of the tree and samples 1,4,5,and 6 form another cluster on the other branch of the tree. Samples 2 and 3 are closely related to each other and samples 1,4,5,and 6 are closely related to each other, with samples 1,4,and 6 being more closely related to each other than sample 5 as it branched off. Despite that, the branching pattern suggests that these 6 samples likely originated from 2 distinct individuals and the genetic distance between the 2 clusters represents differentiation between the 2 lineages.

