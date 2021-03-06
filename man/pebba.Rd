% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{pebba}
\alias{pebba}
\title{PEBBA analysis}
\usage{
pebba(file_in, gmt_file, gene_col = "Gene.symbol", logFC_col = "logFC",
  pvalue_col = "P.Value", min_genes = 100, max_genes = 1500,
  p_cut = 0.2, verbose = TRUE, analysis_name = NULL,
  results_dir = "Results", force = FALSE)
}
\arguments{
\item{file_in}{The file or data.frame to execute the analysis on}

\item{gmt_file}{The name of the gmt file containing terms and genes}

\item{gene_col}{A string indicating the column with genes (Default: "Gene.symbol")}

\item{logFC_col}{A string indicating the column with log fold-change
values (Default: "logFC").}

\item{pvalue_col}{A string indicating the column with p-values (Default: "P.Value")}

\item{min_genes}{Minimum number of genes (Default: 50)}

\item{max_genes}{Maximum number of genes (Default: 3000)}

\item{p_cut}{P-value cutoff (Default: 0.2)}

\item{verbose}{Logical. If TRUE (default), will display analysis progress messages.}

\item{analysis_name}{The name to give to analysis results.
(If NULL, defaults to parameter \code{file_in} without the extensions and file path;
if a data.frame, defaults to 'PEBBA_analysis' when left NULL)}

\item{results_dir}{The path into which results should be saved (Default: "Results").}

\item{force}{Whether or not to overrwrite an existing results directory (Default: FALSE).}
}
\value{
Tables and interactive heatmaps with PEBBA results
}
\description{
This function executes the PEBBA analysis.
}
\examples{
# Run PEBBA analyses
data(example_data)
gmt_file <- system.file("extdata", "pathways.gmt", package = "PEBBA")
pebba(example_data, gmt_file)
}
