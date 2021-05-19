Mean <- function(electionmean) {
  elections %>%
    filter(state == electionmean) %>%
    summarise(totalvotes = mean(totalvotes)) %>%
    pull(state)
}