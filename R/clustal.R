##'  A color scheme of Culstal.This function is a algorithm to assign colors for Multiple Sequence.
##'
##' @param y A data frame, data of a tidy fasta,created by 'tidy_fasta()'.
##' @keywords clustal

color_Clustal<- function(y) {
    char_freq <- lapply(split(y, y$position), function(x) table(x$character))
    col_convert <- lapply(char_freq, function(seq_column) {
        clustal <- rep("#ffffff", length(seq_column)) ##The white as the background
        names(clustal) <- names(seq_column)
        r <- seq_column/sum(seq_column)
        for (pos in seq_along(seq_column)) {
            char <- names(seq_column)[pos]
            i <- grep(char, scheme_clustal$re_position)
            for (j in i) {
                if (scheme_clustal$type[j] == "combined"){
                    rr <- sum(r[strsplit(scheme_clustal$re_gp[j], '')[[1]]], na.rm=T)
                    if (rr > scheme_clustal$thred[j]) {
                        clustal[pos] <- scheme_clustal$colour[j]}
                    } else{
                        rr1<-r[strsplit(scheme_clustal$re_gp[j], ',')[[1]]]
                        if (any(rr1> scheme_clustal$thred[j],na.rm = T) ) {
                            clustal[pos] <- scheme_clustal$colour[j]}
                    }
                break
            }
        }
        return(clustal)
    })

    yy <- split(y, y$position)
    lapply(names(yy), function(n) {
        d <- yy[[n]]
        col <- col_convert[[n]]
        d$color <- col[d$character]
        return(d)
    }) %>% do.call('rbind', .)
}
