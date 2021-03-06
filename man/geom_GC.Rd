% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/char_num.R
\name{geom_GC}
\alias{geom_GC}
\title{geom_GC}
\usage{
geom_GC(msa, start = NULL, end = NULL)
}
\arguments{
\item{msa}{multiple sequence alignment file or
sequence object in DNAStringSet, RNAStringSet, AAStringSet, BStringSet,
DNAMultipleAlignment, RNAMultipleAlignment, AAMultipleAlignment, DNAbin or AAbin}

\item{start}{start position to extract subset of alignment}

\item{end}{end position to extract subset of alignemnt}
}
\description{
Multiple sequence alignment layer for ggplot2. It plot points of GC content.
}
\examples{
library(ggplot2) 
#plot GC content 
f <- system.file("extdata/LeaderRepeat_All.fa", package="ggmsa")
ggmsa(f,font = NULL,color="Chemistry_NT") + geom_GC(f)
}
\author{
Lang Zhou
}
