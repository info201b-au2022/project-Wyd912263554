
library(shiny)
library(knitr)
source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_chart1.R")
source("tabs/tab_panel_chart2.R")
source("tabs/tab_panel_chart3.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

ui <- navbarPage(
  title = "Tobacco Analysis",
  position = "fixed-top",

  # A simple header
  header = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("This project was created by Linda Li, Edward Wu, and Kevin Fu"),
    hr()
  ),

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("INFO 201 B Au 22: Foundational Skills For Data Science: P3: Final Deliverable"),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_chart1,
  tab_panel_chart2,
  tab_panel_chart3,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
