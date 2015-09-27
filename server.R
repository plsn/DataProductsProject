library(shiny)

shinyServer(
        function(input, output) {
                output$inputValue <- renderText({input$system})
                number <- eventReactive(input$goButton, {
                        sample.int(49,input$system)
                })
                output$lotteryNum <- renderText({
                        number()                        
                })
                
        }
)