## STEP 1: LOAD ALL THE PACKAGES NEEDED 
library(shiny)
library(plotly)
library(Ecdat)
library(dplyr)
## STEP 2: FILTER DATA
data(USGDPpresidents)
dt <- USGDPpresidents
dt <- dt %>% 
  filter(Year >= 1790)
## STEP 3: CREATE A USER INTERFACE
ui <- fluidPage(
  title = 'shiny web app',
  
  titlePanel('U.S. Economy'),
  
  sidebarLayout(
    sidebarPanel(sliderInput('year', h3('Timeline'),
                             min = 1790, max = 2015, 
                             value = c(1790, 2015)),
                 selectInput('text', h3('Hoover text'), 
                             choices = names(dt)[2:12], 
                             selected = names(dt)[6]),
                 selectInput('var_y1', h3('Fig 1. Y-AXIS'), 
                             choices = names(dt)[c(2:5,8,9,11)], 
                             selected = names(dt)[5]),
                 selectInput('var_y2', h3('Fig. 2 Y-AXIS'), 
                             choices = names(dt)[c(2:5,8,9,11)], 
                             selected = names(dt)[8])),
    
    mainPanel(plotlyOutput(outputId = 'p1'),
              plotlyOutput(outputId = 'p2'))
  )
  
)
## STEP 4: CREATE A server FUNCTION
server <- function(input,output){
  
  output$p1 <- renderPlotly({
    
    DT <- dt %>% filter(Year >= input$year[1] &
                        Year <= input$year[2])
    plot_ly(DT, x = ~Year, y = DT[,input$var_y1], 
            type = 'scatter', mode = 'lines', hoverinfo = 'text',
            text = paste(input$text, DT[,input$text])) %>% 
      layout(yaxis = list(title = input$var_y1))})
  
  output$p2 <- renderPlotly({
    
    DT <- dt %>% filter(Year >= input$year[1] &
                         Year <= input$year[2])
    plot_ly(DT, x = ~Year, y = DT[,input$var_y2], 
            type = 'scatter', mode = 'lines', hoverinfo = 'text', 
            text = paste(input$text, DT[,input$text])) %>% 
      layout(yaxis = list(title = input$var_y2))})
  
}
## STEP 5: run the application
shinyApp(ui = ui, server = server)