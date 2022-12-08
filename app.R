
library(shiny)
library(tidyverse)
library(ggplot2)
library(plotly)
library(knitr)

source("app_ui.R")
source("app_server.R")

# Run the application
shinyApp(ui = ui, server = server)
