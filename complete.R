complete <- function(directory, id = 1:332) {
    files_list <- list.files(directory, full.names = TRUE)
    row2 <- vector()
    for (i in id) {
        dat <- (read.csv(files_list[i]))
        ok <- sum(complete.cases (dat))
        row2 <- c(row2, ok)
    } 
    row1 <- id
    m <- cbind(row1, row2)
    colnames(m) <- c("id", "nobs")
    return(data.frame(m))
}