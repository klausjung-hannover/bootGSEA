% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootGSEA.r
\name{aggr.multiomics}
\alias{aggr.multiomics}
\title{Multiomics Integration analysis}
\usage{
aggr.multiomics(resultAggr_T, resultAggr_P)
}
\arguments{
\item{resultAggr_T}{A table as returned by the function aggr.boot.GO or aggr.boot.Pathway}

\item{resultAggr_P}{A table as returned by the function aggr.boot.GO or aggr.boot.Pathway}
}
\value{
A matrix containing the following columns: IDs, Integrated aggregation score, Individual omics ranks
}
\description{
Multiomics Integration analysis
}
\details{
Aggregates ranks from Multiomics data
}
\examples{
require(RobustRankAggreg)
require(clusterProfiler)
require(ReactomePA)
genelist <- rnorm(10000) #example for boot.pathway
names(genelist) <- paste( 10000:19999, sep="")
resultpathway = boot.pathway(sigGenes=genelist , B=2, tau=0.95,
 org = 'mouse', pathway = 'Reactome')
resultAggr = aggr.boot.Pathway(resbootpathway = resultpathway)
compareRank(aggrbootGO=resultAggr, lim=100, ord="original", ident=FALSE)
genelist_T <- rnorm(10000)
names(genelist_T) <- paste( 10000:19999, sep="")
genelist_P <- rnorm(10000)
names(genelist_P) <- paste( 10000:19999, sep="")
resultpathway_T = boot.pathway(sigGenes=genelist , B=2, tau=0.95,
 org = 'mouse', pathway = 'Reactome')
resultAggr_T = aggr.boot.Pathway(resbootpathway = resultpathway_T)
resultpathway_P = boot.pathway(sigGenes=genelist , B=2, tau=0.95,
 org = 'mouse', pathway = 'Reactome')
resultAggr_P = aggr.boot.Pathway(resbootpathway = resultpathway_P)
Compareomics = aggr.multiomics(resultAggr_T = resultAggr_T, resultAggr_P = resultAggr_P)
}
\references{
Kolde, R., Laur, S., Adler, P., & Vilo, J. (2012). Robust rank aggregation for gene list integration and meta-analysis. \emph{Bioinformatics}, \strong{28(4)}, 573-580. \url{https://doi.org/10.1093/bioinformatics/btr709}
}
\author{
Shamini Hemandhar Kumar, Klaus Jung
}
