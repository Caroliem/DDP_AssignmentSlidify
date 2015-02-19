library(shiny)
output$text3 <- renderText({
    paste("Based on your age: ", input$Age, "your wealth should be:")
})
output$text2 <- renderText({
    paste(input$Age * 1500,"euro")
})