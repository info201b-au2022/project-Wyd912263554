# tab_panel_chart2

library(shiny)

tab_panel_chart2 <-tabPanel(
  "Adult Tobacco Consumption in the U.S.",
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "measure_choice",
        label = "Choose a Measure",
        choices = c("All Combustibles", "Cigarettes")
      )
    ),
    
    mainPanel(
      plotlyOutput("chart2"),
      
      p("This dot plot finds the trends in adult consumption of different combustible tobacco products per 
      capita from 2000 to 2020. Users are able to select different measures of combustible tobacco products
      to see the trend of them. They can also adjust the scale of year to see the trend of a specific time
      period. We decided to include this chart because it can reveal the adult tobacco consumption based on
      population."),
      
      p("We can conclude from the plot that the adult tobacco consumption in the U.S. has decreased since 2000,
        which is a good sign. ")
    )
  )
)



