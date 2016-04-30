
## Rscript for generating figure 1A
"Figure 1A is a cumulative score plot showing the sum of rankscore of sci-diff"

generateFigure1A <- function(sci_ranking_cumulative_score, 
                             rnd_ranking_cumulative_score,
                             sci_header=c('combination', 'sci_score'),
                             rnd_header=c('combination', 'rnd_score')) {
  
  sci <- read.table(sci_ranking_cumulative_score, col.names = sci_header)  
  rnd <- read.table(rnd_ranking_cumulative_score, col.names = rnd_header)  
  df <- merge(sci, rnd, by.x='combination', by.y ='combination' )
  p <- ggplot(df, aes(x=sci_score, y=rnd_score)) + geom_point()
  p
}
