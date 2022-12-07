# tab_panel_chart3

library(shiny)

tab_panel_chart3 <-tabPanel(
  "Adult Tobacco Use by Age Group",
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput(
        inputId = "tobacco_type",
        label = "Choose a Tobacco Type",
        choices = c("Cigarette Use (Adults)", "Cigar Use (Adults)", "E-Cigarette Use (Adults)", "Any Tobacco Use (Adults)"),
        selected = "Any Tobacco Use (Adults)"
      )
    ),
    
    mainPanel(
      plotlyOutput("chart3"),
      p("This is chart 3.")
    )
  )
)

