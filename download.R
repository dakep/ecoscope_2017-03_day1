# Download the data
spx <- read.csv("https://asda.stat.ubc.ca/workshops/data/sp500_yearend.csv")

write.csv(spx, "sp_500_yearend.csv")
