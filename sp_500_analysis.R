# Download the data
spx <- read.csv("https://asda.stat.ubc.ca/workshops/data/sp500_yearend.csv")

# head(spx)

## calculate the yearly returns
yoy.returns <- diff(spx$Close) / spx$Close[-nrow(spx)]

## Plot the yearly returns
library(ggplot2)
ggplot(data.frame(year = spx$Year[-1], return = yoy.returns),
       aes(x = year, y = return)) +
    geom_point()

ggsave("sp_500_returns.png")
