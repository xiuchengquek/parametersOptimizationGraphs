


generateFigure1B <- function(sci_ranking_flat_values, 
                             rnd_ranking_flat_values,
                             sci_file_name = 'sci_boxplot.pdf',
                             rnd_file_name = 'rnd_boxplot.pdf',
                             sci_header = c('Sequence', 'Combination', 'SCIdff'),
                             rnd_header = c('Sequence', 'Combination', 'rnddiff')){
  
  sci <- read.table('data/sci_ranking/sci_flat_values_2104/part-00000', sep='\t')
  colnames(sci)<- sci_header
  
  
  rnd <- read.table('data/sci_ranking/sci_flat_values_2104/part-00000', sep='\t')
  
}
