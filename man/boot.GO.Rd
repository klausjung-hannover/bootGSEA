% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootGSEA.r
\name{boot.GO}
\alias{boot.GO}
\title{Bootstrap GO analysis}
\usage{
boot.GO(sigGenes, gene2GO, B = 2, tau = 0.95, onto = "BP")
}
\arguments{
\item{sigGenes}{Vector coding for differentially expressed genes (value 1) and non-differentially expressed genes (value 0)}

\item{gene2GO}{List containing GO-terms per gene}

\item{B}{Number of bootstrap runs}

\item{tau}{Percentage (between 0 and 1) of original size of GO-sets to be sampled for bootstrap analysis}

\item{onto}{Either "BP" for biological process, "MF" for molecular function, or "CC" for cellular component}
}
\value{
A list containing the following items:
\describe{
\item{nonbootresult}{Table with results of original GO analysis.}
\item{bootresult}{List of size B, where each element is the result of a bootstrap GO analysis.}
}
}
\description{
Bootstrap GO analysis
}
\details{
Performs bootstrap GO analysis.
}
\examples{
library(RobustRankAggreg)
library(topGO)
d <- 10000 ### number of genes
sigGenes.example <- rbinom(d, 1, 0.1)
names(sigGenes.example) <- paste("gene", 1:d, sep="_")
gene2GO.example <- vector(mode="list", length=d)
names(gene2GO.example) <- names(sigGenes.example)
GOs = paste("GO:000", 1000:9999, sep="")
for (j in 1:d) gene2GO.example[[j]] <- sample(GOs, rnbinom(1, 1, 0.1),replace=FALSE)
resultGO = boot.GO(sigGenes=sigGenes.example, gene2GO=gene2GO.example)
}
\references{
Alexa, A., & Rahnenführer, J. (2009). Gene set enrichment analysis with topGO. \emph{Bioconductor Improv}, strong{27}, 1-26. \url{https://mirrors.nju.edu.cn/bioconductor/3.2/bioc/vignettes/topGO/inst/doc/topGO.pdf}
}
\author{
Shamini Hemandhar Kumar, Klaus Jung
}
