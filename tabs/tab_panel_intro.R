# tab_panel_intro

library(shiny)
library(knitr)
library("markdown")
tab_panel_intro <-tabPanel(
    "Introduction",
    fluidRow(
      column(
        12,
        includeMarkdown("tabs/introduction.md")
      )
    )
)

