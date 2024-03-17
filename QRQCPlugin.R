library(qrqc)

input <- function(infile) {
s.fastq <<- readSeqFile(infile)
}

run <- function() {}

output <- function(outfile) {
pdf(outfile)
qualPlot(s.fastq)
basePlot(s.fastq)
seqlenPlot(s.fastq)
gcPlot(s.fastq) + geom_hline(yintercept=0.5, color="purple")
kmerKLPlot(s.fastq)
makeReport(s.fastq)
}
