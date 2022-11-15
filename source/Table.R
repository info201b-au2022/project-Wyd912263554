library(stringr)
library(tidyverse)

tobacco_use <- read_csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/tobacco.csv")
current_use <- read_csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/Current%20Cigarette%20Use%20Among%20Adults%20(Behavior%20Risk%20Factor%20Surveillance%20System)%202019.csv")
cigarette_2000 <- tobacco_use %>% 
  filter(Year == 2000) %>%
  select(State, `Never smoked`)
colnames(cigarette_2000)[colnames(cigarette_2000) == "Never smoked"] = "Never smoking percentage in 2000"
cigarette_2019 <- current_use %>% 
  select(LocationDesc, Data_Value)
colnames(cigarette_2019)[colnames(cigarette_2019) == "LocationDesc"] = "State"
colnames(cigarette_2019)[colnames(cigarette_2019) == "Data_Value"] = "Smoking percentage in 2019"
cigarette_group <- cigarette_2000 %>%
  left_join(cigarette_2019, by = "State")
