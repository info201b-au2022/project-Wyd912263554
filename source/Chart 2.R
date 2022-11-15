library(dplyr)
library(ggplot2)

Tobacco <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/tobacco.csv")

Tobacco_Washington <- Tobacco %>%
  filter(State == "Washington") %>%
  arrange(Year)  

chart_2 <- ggplot(data = Tobacco_Washington) + 
  geom_point(aes(x = Year, y = Smoke.everyday)) +
  ylab("Percentage of People Smoking Everyday in Washington State")
plot(chart_2)





