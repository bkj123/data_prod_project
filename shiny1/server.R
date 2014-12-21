require(shiny)
library(scales)
shinyServer(
  function(input, output){ 
        output$oamt<- renderPrint({input$amt})
        output$orate<- renderPrint({input$rate})
        output$oterm<- renderPrint({input$term})
        output$pmt<- renderPrint({dollar((input$amt*(1+input$rate/1200)^(input$term*12)*(input$rate/1200)
                /((1+(input$rate/1200))^(input$term*12)-1)))})
  #150000*(1+.005)^180*(.005)/((1.005)^180-1)
  }
)