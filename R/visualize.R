
feature_hist <- function(column.names){

  sapply(column.names, function(x, y){
                  hist(y[,x], main = paste0("Histogram, ", x))
              },
         y = climateset)

  return(invisible(NULL))
}

feature_density <- function(column.names){

  sapply(column.names, function(x, y){
                  plot(density(y[,x]), main = paste0("density ", x))
              },
         y = climateset)

  return(invisible(NULL))
}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
feature_hist <- function(column.names){

  sapply(column.names, function(x, y){
                  hist(y[,x], main = paste0("Histogram, ", x))
              },
         y = climateset)

  return(invisible(NULL))
}

feature_density <- function(column.names){

  sapply(column.names, function(x, y){
                  plot(density(y[,x]), main = paste0("density ", x))
              },
         y = climateset)

  return(invisible(NULL))
}

