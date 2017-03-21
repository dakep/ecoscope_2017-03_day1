## Read in data from previous step
spx.returns <- read.csv("sp_500_returns.csv")

## Plot the yearly returns
library(ggplot2)
ggplot(spx.returns,
       aes(x = Year, y = Return)) +
    geom_point() +
    theme_bw()

ggsave("sp_500_returns.png")
