The R-package **bootGSEA** provides function to repeat GSEA using bootstrap samples of gene sets. Bootstrap results are aggregated to a new ranking score. The score can be compared to the gene set ranking resulting from the standard GSEA.

**Installation**

Please use the following code in your R-environment:

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")    

BiocManager::install(version = "3.18")

BiocManager::install("klausjung-hannover/bootGSEA")

...or download the 'bootGSEA_1.0.tar.gz' file and do the installation from a local directory.
