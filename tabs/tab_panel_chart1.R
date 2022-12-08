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
        
        p("This line chart finds the relationship between smoking population and year of states in the U.S. from 
        1995 to 2010. By selecting the states in the widget,the user can see the trend from each state. They can
        also adjust the scale of year using the slider. We included the chart because it allows the users to see 
        the population of those who smoke everyday from states they would like to choose. "),
        
<<<<<<< HEAD
        p("The overall trend of all states has decreased since 1995. It's interesting how there are couple of peaks
=======
        p("The overall trend of all states has increased since 1995. It's interesting how there are couple of peaks
>>>>>>> refs/remotes/origin/main
        from 2000 to 2003. We also noticed that eastern states tend to have more smoking  population than western 
        states in the U.S.")
      )
    )
)


