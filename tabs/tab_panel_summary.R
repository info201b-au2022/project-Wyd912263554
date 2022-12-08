# tab_panel_summary
library("markdown")
library(shiny)

tab_panel_summary <-tabPanel(
    "Summary",
    fluidRow(
      column(
        12,
        includeMarkdown("tabs/Summary.md")
      )
    )
  )
