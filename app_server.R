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
data2 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/Adult_Tobacco_Consumption_In_The_U.S.__2000-Present.csv")
data3 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-Wyd912263554/main/data/National_Adult_Tobacco_Survey__NATS_.csv")

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
    
    
  df2 <- reactive ({
    new <- data2 %>%
      filter(Measure == input$measure_choice)
  })
  
  output$chart2 <- renderPlotly({
    p2 <- ggplot(data = df2(), aes(x = Year, y = Total.Per.Capita, colour = Measure)) +
      geom_point() +
      labs(x = "Year", y = "Total Per Capita Consumption", title = "Adult Tobacco Consumption Total Per Capita")
    p2 <- ggplotly(p2)
    p2
  })
  
  
  df3 <- reactive({
    new_df2 <- data3 %>%
      filter(TopicDesc == input$tobacco_type)
  })
  
  output$chart3 <- renderPlotly({
    p3 <- ggplot(data = df3(), aes(x = TopicDesc, y = Data_Value, fill = Age, stat = "identity")) +
      geom_col() +
      labs(x = "Types of Tobacco Product", y = "Percentage of Users", title = "2013 - 2014 Adult Tobacco Use by Age")
    p3 <- ggplotly(p3)
    p3
  })
  
}

