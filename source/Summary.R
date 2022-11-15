library(stringr)
library(tidyverse)
tobacco_industry <- read_csv("/Users/wuyudong/Documents/info201/project-Wyd912263554/data/Tobacco_industry.csv")
tobacco_use <- read_csv("/Users/wuyudong/Documents/info201/project-Wyd912263554/data/tobacco.csv")
brain_stroke <- read_csv("/Users/wuyudong/Documents/info201/project-Wyd912263554/data/brain_stroke.csv")

summary_info <- list()
summary_info$max_country <- tobacco_industry %>%
  filter(`Production in thousands of tons` == max(`Production in thousands of tons`, na.rm = T)) %>%
  select(`Country or region`)
summary_info$max_production <- tobacco_industry %>%
  filter(`Production in thousands of tons` == max(`Production in thousands of tons`, na.rm = T)) %>%
  select(`Production in thousands of tons`)
summary_info$num_states <- nrow(tobacco_use)
summary_info$num_observations <- nrow(brain_stroke)
summary_info$stroke_smoke <- brain_stroke %>%
  filter(smoking_status == "smokes") %>%
  pull(stroke)