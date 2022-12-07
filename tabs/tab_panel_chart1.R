# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
    "State Smoking Population Line Graph",
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = "state_choice",
          label = "Choose a State",
          choices = unique(data1$State)
        ),
        
        sliderInput(
          inputId = "year_choice",
          label = "Year",
          min = 1995,
          max = 2010,
          value = c(1995, 2010),
          sep = ""
        )
      ),
      
      mainPanel(
        plotlyOutput("chart1"),
        p("This is chart 1.")
      )
    )
)


