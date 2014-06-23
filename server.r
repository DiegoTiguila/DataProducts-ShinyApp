library(shiny)
BMI <- function(mass,height) round((mass/height),2)
BMIs <- function(BMI){
  if(BMI<18.5){
    status = "Underweight"
  } else if(BMI<25){
    status = "Normal"
  } else if(BMI< 30){
    status = "Overweight"
  } else{
    status = "Obese"
  }
  return(status)
}
shinyServer(
function(input, output) {
BMI <- reactive({as.numeric(input$mass) /as.numeric(input$height)^2 })
output$omass <- renderText({paste0("Mass: ",input$mass," kg")})
output$oheight <- renderText({paste0("Height: ",input$height," m")})
output$oBMI <- renderText({BMI(input$mass,input$height)})
output$oBMIint <- renderText({BMIs(BMI)})
}
)
