## Read in the data
spx <- read.csv("sp_500_yearend.csv")

## calculate the yearly returns
library(dplyr)

spx <- mutate(
    spx,
    Return = c(NA, diff(Close)) / lag(Close)
)

# Write results to file
write.csv(spx, "sp_500_returns.csv")

