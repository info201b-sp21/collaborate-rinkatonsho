describedata <- function(electionstate) {
  elections %>%
    filter(state == electionstate) %>%
    summarise(totalvotes = sum(totalvotes)) %>%
    pull(totalvotes)
}
