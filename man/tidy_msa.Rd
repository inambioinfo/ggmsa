% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msa_data.R
\name{tidy_msa}
\alias{tidy_msa}
\title{tidy_msa}
\usage{
tidy_msa(msa, start = NULL, end = NULL)
}
\arguments{
\item{msa}{multiple sequence alignment file or
sequence object in DNAStringSet, RNAStringSet, AAStringSet, BStringSet,
DNAMultipleAlignment, RNAMultipleAlignment, AAMultipleAlignment, DNAbin or AAbin}

\item{start}{start position to extract subset of alignment}

\item{end}{end position to extract subset of alignemnt}
}
\value{
tibble data frame
}
\description{
Convert msa file/object to tidy data frame
}
\author{
Guangchuang Yu
}
