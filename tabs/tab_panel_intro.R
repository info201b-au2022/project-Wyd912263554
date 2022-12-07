# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    fluidRow(
      column(
        12,
        uiOutput('markdown')
      )
    )
)
