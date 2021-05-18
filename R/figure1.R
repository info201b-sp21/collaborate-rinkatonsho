library(tidyverse)
library(maps)
library(dplyr)

ele_res <- read.csv("data/election_result.csv", sep = "\t")
sum <- ele_res %>%
  summarise(republican = sum(candidatevotes.republican, na.rm=TRUE), democrat = sum(candidatevotes.democrat, na.rm=TRUE))
sum <- as.data.frame(t(sum))
sum$sides <- rownames(sum)



fig1 <- function(){
  p<-ggplot(data=sum, aes(x=sides, y=V1, fill=sides)) +
    geom_bar(width = .7, stat="identity")+
    scale_fill_manual("parties", values = c("democrat" = "deepskyblue", "republican" = "coral1")) +
    labs(
      title = "Comparison Of total Votes Between The Two Parties",
      x = "Parties",
      y = "Votes",
      color = "Parties"
    )
}
