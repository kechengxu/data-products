library(shiny)

MPG<-function(type,wt,hp) as.numeric(type)*2.08-2.88*wt-0.04*hp+34

shinyServer(
    function(input,output) {
        output$var1<-renderPrint({input$type})
        output$var2<-renderPrint({input$wt})
        output$var3<-renderPrint({input$hp})
        output$prediction<-renderPrint({MPG(input$type,input$wt,input$hp)})
    }
)
 