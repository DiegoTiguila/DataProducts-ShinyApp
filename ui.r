library(shiny)
shinyUI(pageWithSidebar(
headerPanel(
h1("Body mass index calculator", align = "center"),
br()
),
sidebarPanel(
 p("The body mass index (BMI) is a measure of relative weight based on an individual's mass and height.
    It is defined as the individual's body mass divided by the square of their height."),
 br(),
    p("The following application allows you to calculate your body mass index, for doing so you need to enter your weight(mass)
     in kilograms and your height in meters in the panel below."),
  br(),
numericInput('mass','Enter your mass in Kg', 1, min=0 , step=0.01 ),
numericInput('height','Enter your height in m', 1, min=0, step=0.01),
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
