corr <- function(directory, threshold = 0) {
    files_list <- list.files(directory, full.names = TRUE)
    final <- vector ()
    for (i in 1:332) {
        ok <- sum(complete.cases(read.csv(files_list[i])))
        if(ok > threshold){
            pro <- read.csv(files_list[i])
            ject <- cor(pro["nitrate"], pro["sulfate"], "complete.obs")
            final <- c(final, ject)
        }}
    return(as.vector(final))
    }