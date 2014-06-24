library(shiny)
BMI <- function(mass,height) round((mass/height^2),2)
BMIs <- function(BMI){
  if(BMI < 15){
    clasif = "Very severely underweight"
  } 
  if(BMI < 16){
    clasif = "Severely underweight"
  } 
  if(BMI < 18.5){
    clasif = "Underweight"
  } else if(BMI < 25){
    clasif = "Normal (healthy weight)"
  } else if(BMI < 30){
    clasif = "Overweight"
  } else if(BMI < 35){
    clasif = "Moderately obese"
  } 
  else if(BMI < 40){
    clasif = "Severely obese"
  } else{
    clasif = "Very severely obese"
  }
  return(clasif)
}
shinyServer(
function(input, output) {

output$omass <- renderText({paste0("Mass: ",input$mass," kg")})
output$oheight <- renderText({paste0("Height: ",input$height," m")})
output$oBMI <- renderText({paste0(BMI(input$mass,input$height)," m/kg^2")})

output$oBMIint <- renderText({
x<- BMI(input$mass,input$height)
paste0("your category is: ",BMIs(x))
})
}
)
