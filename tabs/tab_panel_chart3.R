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
      
      
      p("This bar graph highlights adult tobacco use by different age groups in the U.S. By selecting the different types
        of tobacco, users can see the trend of age groups and compare the different population from 2013 - 2014. We included
        this graph because it makes it easy to compare different tobacco use and population of each age group within each type."),
      
      p("We concluded that cigarette is the main use of tobacco. People between 18 to 44 tend to use tobacco more than other 
        age groups. Cigar use is the tobacco type with the least population. Also, older people use cigarettes more while
        younger age groups use e-cigarettes more often.")
    )
  )
)

