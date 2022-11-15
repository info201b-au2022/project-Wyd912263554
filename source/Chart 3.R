library(dplyr)
library(ggplot2)

Tobacco <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/tobacco.csv")

Tobacco_Washington <- Tobacco %>%
  filter(State == "Washington") %>%
  arrange(Year)  

chart_3 <- ggplot(data = Tobacco_Washington) + 
  geom_boxplot(mapping = aes(x = Year, y = Never.smoked)) +
  ylab("Percentage of People Who Never Smoked in Washington State")
plot(chart_3)


