library(shiny)
shinyUI(pageWithSidebar(
headerPanel("Body mass index calculator"),
sidebarPanel(
numericInput('mass','Enter your mass in Kg', 0, min=0 , step=0.01),
numericInput('height','Enter your height in m', 0, min=0, step=0.01),
submitButton('Submit')
),
mainPanel(
h3('You entered the following data:'),
h4(textOutput("omass")),
h4(textOutput("oheight")),
h3('Your BMI is: '),
h4(textOutput("oBMI")),
h4(textOutput("oBMIint"))

)
))
