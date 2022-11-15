library(dplyr)
library(ggplot2)
library(tidyverse)

Tobacco_industry <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/Tobacco_industry.csv")

chart_1 <- ggplot(data = Tobacco_industry) +
  geom_col(mapping = aes(x = Country.or.region, y = Production.in.thousands.of.tons)) + 
  xlab("Country or region") + ylab("Tobacco Production in Thousands of Tons")
plot(chart_1)