describeData <- function(electionyear) {
  elections %>%
    filter(year == electionyear) %>%
    summarize(income,totalvotes) %>%
    pull(income,totalvotes)
}

