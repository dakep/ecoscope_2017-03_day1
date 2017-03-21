library(ggplot2)

## Read in the data
spx <- read.csv("sp_500_returns.csv")

## Plot the data
ggplot(spx, aes(x = Year, y = Close)) +
    geom_point()

ggsave("sp_500_yearly_close.png")
