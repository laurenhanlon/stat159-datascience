library(shiny)

# load data
advertising <- read.csv("Advertising.csv")
advertising <- advertising[,-1] #don't need index

ui <- fluidPage(
  headerPanel('Scatterplot of Sales vs Media Types'),
  sidebarPanel(
    selectInput('xcol', 'Media', c("TV", "Radio", "Newspaper"))
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  
  selectedData <- reactive({
    Advertising[, c(input$xcol, "Sales")]
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         pch = 20, cex = 3)
  })
  
}

shinyApp(ui = ui, server = server)