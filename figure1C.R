

## figure1C.R CoV plot


CV <- function(x){
  (sd(x) / mean(x)) *100
}

get_metrics <- function(df, prefix){ 
  attach(df)
  df_metrics <- aggregate(adjusted_rank, by=list(combination), 
                      function(x) c(iqr = IQR(x) , 
                                    rank_mean = mean(x), 
                                    rank_median = median(x), 
                                    rank_cv = median(x)))
  detach(df)
  colnames(df_metrics) <- paste(colnames(df_metrics), prefix, sep='.')
  df_metrics
}
  
  


generateFigure1C <- function(
  sci_ranking_file,
  rnd_ranking_file,
  sci_header=c('combination', 'pair', 'sci_rank'),
  rnd_header=c('combination', 'pair', 'rnd_rank')
) {
  
  sci_df <- read.table(sci_ranking_file, sep='\t', col.names=sci_header)
  sci_df$adjusted_rank <- sci_df$sci_rank + 1
  attach(sci_df)
  sci_IQR <- aggregate(adjusted_rank, by=list(combination), IQR)
  sci_mean <- aggregate(adjusted_rank, by=list(combination), mean)
  sci_median <- aggregate(adjusted_rank, by=list(combination), median)
  sci_cv <- aggregate(adjusted_rank, by=list(combination), CV )
  detach(sci_df)
  
  
  rnd_df <- read.table(rnd_ranking_file, sep='\t', col.names=rnd_header)
  rnd_df$adjusted_rank <- rnd_df$sci_rank + 1 
  attach(sci_df)
  sci_IQR <- aggregate(adjusted_rank, by=list(combination), IQR)
  sci_mean <- aggregate(adjusted_rank, by=list(combination), mean)
  sci_median <- aggregate(adjusted_rank, by=list(combination), median)
  sci_cv <- aggregate(adjusted_rank, by=list(combination), CV )
  detach(sci_df)
  
  
  
  
  
  
  
  sci_metrics <- cbind(sci_IQR, sci_mean, sci_median, sci_cv)
  
  data.frame(sci_IQR = sci_IQR, sci_mean = sci_mean, sci_median = sci_median ,sci_cv = sci_cv )  
  
  
  
  sci_df <- read.table(sci_ranking_file, sep='\t', col.names=sci_header)
  
  
  
  
  
  
}


