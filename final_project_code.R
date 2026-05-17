allcontigs <- c()
for(i in 1:6){
contigs <- readDNAStringSet(paste0('C:/Users/georg/Downloads/forrohan/t', i, '_out/final.contigs.fa'))
allcontigs <- c(allcontigs, contigs)
}

allcontigs <- do.call(c, allcontigs)

toalign <- allcontigs[which(nchar(allcontigs) > 5000)]

names(toalign) <- 1:length(toalign)

aligned <- AlignSeqs(toalign)

BrowseSeqs(aligned, htmlFile = "Rohan's Bioinformatics Final Project.html")

Treeline(a, method ="ML", showPlot = True)
