library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Car MPG Prediction"),
    sidebarPanel(
        h5("Researches indicate that the fuel efficiency of cars (represented by MPG, miles per gallon)
           is related to the car's transmission type, weight and gross horsepower. Using the following app,
           you can get a rough estimate of your car's MPG by simply choosing your car's transmission type,
           entering the value of your car's weight and gross horsepower, and then clicking the submit button."),
        checkboxGroupInput("type","Transmission Type",c('Automatic ("0")'=0,'Manual ("1")'=1)),
        numericInput('wt','Weight 1000lb',0,min=1,max=6,step=0.5),
        numericInput('hp','Gross Horsepower',0,min=50,max=350,step=50),
        submitButton('Submit')
        ),
    mainPanel(
        h3('Results of prediction'),
        h4('Transmission Type'),
        verbatimTextOutput("var1"),
        h4('Weight 1000lb'),
        verbatimTextOutput("var2"),
        h4('Gross Horsepower'),
        verbatimTextOutput("var3"),
        h4('Predicted MPG'),
        verbatimTextOutput("prediction")
        )
    )
)

