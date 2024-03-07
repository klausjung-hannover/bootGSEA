**Description**

The R-package **bootGSEA** provides function to repeat GSEA using bootstrap samples of gene sets. Bootstrap results are aggregated to a new ranking score. The score can be compared to the gene set ranking resulting from the standard GSEA.

**Installation**

Eventually, you first need to install the packages 'BiocManager' and 'ReactomePA'

if (!require("BiocManager", quietly = TRUE))<br>
    install.packages("BiocManager")<br>
BiocManager::install(version = "3.18")<br>
BiocManager::install("ReactomePA")

Next, you can install 'bootGSEA':

BiocManager::install("klausjung-hannover/bootGSEA")

...or download the 'bootGSEA_1.0.tar.gz' file and do the installation from a local directory.
