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
## STEP 3: DESING AN USER INTERFACE
ui <- fluidPage(
  title = 'shiny web app',
  
  titlePanel('U.S. Economy'),
  
  sidebarLayout(
    sidebarPanel(sliderInput(inputId = 'year', h3('Year'),
                             min = 1790, max = 2015, 
                             value = c(1790, 2015))),
    mainPanel(plotlyOutput(outputId = 'p'))
  )
  
)
## STEP 4: MAKE THE RULES FOR THE server
server <- function(input,output){
  
  output$p <- renderPlotly({
    
    DT <- dt %>% filter(Year >= input$year[1] &
                          Year <= input$year[2])
    plot_ly(DT,x = ~Year, y = ~realGDPperCapita, 
            type = 'scatter', mode = 'lines', 
            text = paste('Excutive chief :', DT$executive))})

}
## STEP 5: RUN THE APP
shinyApp(ui = ui, server = server)