library(shiny)
library(datasets)

shinyServer(function(input, output) { 
  output$distPlot <- renderPlot({
    row_count <- input$obs
    #data_col<-"speed"
    data_col<-input$col_name
    if( row_count < 0 )
        row_count <- nrow(cars)
    x    <- cars[1:row_count, c(data_col)]  
    mx <- mean(x)
    hist(x, main=paste("Histogram of",data_col),
	 xlab=data_col,col = 'darkgray', border = 'white')
    abline(v = mx, col = "blue", lwd = 2)
    text(mx,0, "mean", col = "red", adj = c(0, -.1))
  })
 }
)
