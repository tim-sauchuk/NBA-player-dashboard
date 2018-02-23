install.packages("shiny")
install.packages("ggplot2")
library(shiny)
library(ggplot2)  # for the diamonds dataset

shinyUI(pageWithSidebar(
  headerPanel('Examples of DataTables'),
  sidebarPanel(
    checkboxGroupInput('show_vars', 'Columns in Team to show:', names(SPA_Schedule),
                       selected = names(SPA_Schedule)),
    helpText('Select the fields you would like to be shown.')
    ),
  mainPanel(
    tabsetPanel(
      tabPanel('Team',
               dataTableOutput("mytable1")),
      tabPanel('Player',
               dataTableOutput("mytable2")),
      tabPanel('Injury',
               dataTableOutput("mytable3")),
      tabPanel('Conference',
               dataTableOutput("mytable4")),
      tabPanel('Division',
               dataTableOutput("mytable5")),
      tabPanel('Coach',
               dataTableOutput("mytable6")),
      tabPanel('City',
               dataTableOutput("mytable7")),
      tabPanel('Custom',
               dataTableOutput("mytable8"))
    )
  )
    ))