library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict your likelihood to default on your credit Card"),
  sidebarPanel(
    h3('Enter your details'),
    p('I have created a simple prediction algorithm based on your age and the amount of money that you have spent on your credit card in the past 30 days (in dollars). In the fields below, please enter your age (in years) and amount spent on your credit card in the last 30 days and press the submit button to determine your percent likelihood to default.'),
    numericInput('age','Age (in years): ',21,min=18,max=99,step=1),
    numericInput('spend','How much have you spent in the last month on your credit card (in dollars): ',100,min=0,max=15000,step=10),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results'),
    h4('Your age:'),
    verbatimTextOutput("oage"),
    h4('Your 30 day spend'),
    verbatimTextOutput("ospend"),
    h4('Your default risk:'),
    verbatimTextOutput("odefaultrisk")
  )
))
