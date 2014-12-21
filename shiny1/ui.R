library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Loan Payment Calculator"),
  sidebarPanel(
        h3('Inputs'),
        numericInput('amt','Loan Amount (From 1,000 to 10,000,000 by 1,000s)', 100000, min=1000, max=10000000,step=1000),
        numericInput('rate','Annual Interest Rate (From 0.1% to 100.0% by 0.1%)', 6.0, min=0.1, max=100.0,step=0.1),
        numericInput('term','Number of Years (From 1 to 50 with increments of 1)', 30, min=1, max=50, step=1),
        submitButton("Go")
  ),
  mainPanel(
        br(),
        h3('Output'),
        p('The monthly payment is:'),
        verbatimTextOutput("pmt"),
        br(),
        h3('Description & Instructions'),
        p('This shiny application calculates a monthly loan payment based on 3 inputs:'),
        p('     - a loan amount'),
        p('     - an annual interest rate'),
        p('     - the length of the loan in years'),
        br(),
        h4('Steps'),
        p('1. On the left side of the screen, under the Inputs heading, enter...'),
        p('     - the loan amount'),
        p('     - the annual interest rate'),
        p('     - the length of the loan'),
        p('     note: values can be typed into each input box or they can be incremented with the up and down arrows on the right side of each input box'),
        p('2. Click the Go button'),
        p('3. View the calculated monthly payment amount under the Output heading above')
        
  )
))