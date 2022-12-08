
library(shiny)
library(tidyverse)
library(ggplot2)
library(plotly)
library(knitr)

source("source/data-wrangling.R")

server <- function(input, output) {
  output$markdown <- renderUI({
    HTML(markdown::markdownToHTML(knit('source/Introduction.Rmd', quiet = TRUE)))
  })
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
      filter(Measure == input$measure_choice) %>%
      filter(Year >= input$year_slider[1]) %>%
      filter(Year <= input$year_slider[2])
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
      filter(TopicDesc == input$tobacco_type) %>%
      filter(Age == "18 to 24 Years" | Age == "25 to 44 Years" | Age == "45 to 64 Years" | Age == "65 Years and Older")
  })
  
  output$chart3 <- renderPlotly({
    p3 <- ggplot(data = df3(), aes(x = TopicDesc, y = Data_Value, fill = Age, stat = "identity")) +
      geom_col() +
      labs(x = "Types of Tobacco Product", y = "Percentage of Users", title = "2013 - 2014 Adult Tobacco Use by Age")
    p3 <- ggplotly(p3)
    p3
  })
  
}


