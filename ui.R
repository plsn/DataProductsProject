library(shiny)
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Lottery Number Generator"),
        
        sidebarPanel(
                br(),
                numericInput('system', 'Choose lottery System (6, 7, 8 or 9)', value = 6, min = 6, max = 9, step = 1),
                br(),
                actionButton("goButton", "Submit"),
                p("Click the Submit button to update the lottery numbers displayed in the main panel.")
        ),
        mainPanel(
                h3('Results of lottery number generator'),
                br(),
                h4('You selected System'),
                verbatimTextOutput("inputValue"),
                br(),
                h4('Which resulted in the following lottery numbers generated '),
                verbatimTextOutput("lotteryNum")                
        )
)
)