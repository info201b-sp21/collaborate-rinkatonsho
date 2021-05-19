library(tidyverse)
library(maps)
library(dplyr)

ele_res <- read.csv("R/data/election_result.csv", sep = "\t")

WA_data <- ele_res %>%
  filter(state2 == "WA") %>%
  group_by(year) %>%
  summarise(republican = sum(candidatevotes.republican, na.rm=TRUE), democrat = sum(candidatevotes.democrat, na.rm=TRUE))


fig2 <- function(){
  p <- ggplot(data = WA_data) +
    geom_line(mapping = aes(x = year, y = republican), size = 2, col="coral1") +
    geom_line(mapping = aes(x = year, y = democrat), size = 2, col="deepskyblue") +
    labs(
      title = "Votes in Washington state over time", # plot title
      x = "years",
      y = "Votes"
    )  
}
