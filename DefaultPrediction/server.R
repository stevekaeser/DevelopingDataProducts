library(shiny)

defaultRisk <- function(age,spend) (1/(1+exp(-(spend/15000 - age/99)))) * 100

shinyServer(
  function(input,output) {
    output$oage <- renderPrint({input$age})
    output$ospend <- renderPrint({input$spend})
    output$odefaultrisk <- renderPrint({defaultRisk(input$age,input$spend)})
  }
)
