library(shiny)

shinyUI(fluidPage(
  titlePanel("Analysis of dataset cars"),
  sidebarLayout(
    sidebarPanel(
      numericInput("obs", "Number of observation:", 10),
      selectInput("col_name", "Choose a column:", choices = c("speed", "dist"))
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)) 
