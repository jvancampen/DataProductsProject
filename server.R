# server.R file
library(shiny)

bmi <- function(gender,age,height,weight){
        if (gender=="None selected") "Please enter gender."
        else if (age=="None selected") "Please enter age."
        else round(1.3 * weight / (height /100) ^ 2.5,1)
    }

shinyServer(
    function(input,output){
        output$gender <- renderText({paste("Gender:",input$gender)})
        output$age <- renderText({paste("Age (years):",input$age)})
        output$height <- renderText({paste("Height (centimeters):",input$height)})
        output$weight <- renderText({paste("Mass (kilograms):",input$weight)})
        output$bmi <- renderText({bmi(input$gender, input$age, input$height, input$weight)})
    }
)

