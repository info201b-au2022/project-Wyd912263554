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
      p("This is chart 2.")
    )
  )
)



