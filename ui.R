
# ui.R file
library(shiny)
genderlabels <- c("None selected","Female","Male")
agelabels <- c("None selected","Less than 18","18-24","25-34","35-44","45-54","55-64",
               "65-74", "75 or older")
shinyUI(fluidPage(
    # Application title
    titlePanel("Modern Body Mass Index Calculator"),
    sidebarPanel(
        h3('Input Data'),
        selectInput("gender", label = h4("Gender"), choices = genderlabels),
        selectInput("age", label = h4("Age (years)"), choices = agelabels),
        numericInput("height", label = h4("Height (centimeters)"), min=1, max=250, value = 180),
        numericInput("weight", label = h4("Mass (kilograms)"), min=1, max=250, value = 82)
    ),
    mainPanel(
        h3('Summary of Input Health Data'),
        h5(textOutput("gender")),
        h5(textOutput("age")),
        h5(textOutput("height")),
        h5(textOutput("weight")),
        h3('Your Body Mass Index:'),
        h3(textOutput('bmi'))
    )
))


