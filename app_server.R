#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(ggplot2)
library(plotly)

data1 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/tobacco.csv")


server <- function(input, output) {
  data1$Smoke.everyday <- gsub("%", "", data1$Smoke.everyday)
  
  df1 <- reactive ({
    new_df <- data1 %>%
    filter(State == input$state_choice) %>%
    filter(Year >= input$year_choice[1]) %>%
    filter(Year <= input$year_choice[2])
  })
    
  
    output$chart1 <- renderPlotly({
      p1 <- ggplot(data = df1(), aes(x = Year, y = as.numeric(Smoke.everyday), colour = State)) +
        geom_line() + 
        ylim(0, 25) +
      labs(x = "Year", y = "Percentage of People Who Smoke Everyday", title = "State Smoking Population Over Time")
      p1 <- ggplotly(p1)
      p1
    })
}


