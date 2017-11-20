## STEP 1: LOADING PACKAGE
library(shiny)
library(shinydashboard)
library(plotly)
library(Ecdat)
library(dplyr)
## STEP 2: FILTERING DATA
data(USGDPpresidents)
dt <- USGDPpresidents
dt <- dt %>% 
  filter(Year >= 1790)
## STEP 3: DESIGN AN USER INTERFACE
ui <- dashboardPage(
  title = 'shiny dashboard',
  
  dashboardHeader(title = 'Dashboard'),
  
  dashboardSidebar(
    menuItem('Figure', tabName = 'fig', icon = icon('line-chart'))
  ),
  
  dashboardBody(
    tabItem(tabName = 'fig',
            fluidRow(
              box(
                title = 'Plotly figure',
                plotlyOutput(outputId = 'p1')),
              box(
                title = 'Control Panel',
                sliderInput('year', 'Timeline',
                            min = 1790, max = 2015, 
                            value = c(1790, 2015)),
                selectInput('var_y1', 'y-axis variable', 
                            choices = names(dt)[c(2:5,8,9,11)], 
                            selected = names(dt)[5])))
            )
    )
  )
## STEP 4: CREATE A SERVER FUNCTION
server <- function(input, output){
  
  output$p1 <- renderPlotly({
    
    DT <- dt %>% filter(Year >= input$year[1] &
                          Year <= input$year[2])
    plot_ly(DT, x = ~Year, y = DT[,input$var_y1], 
            type = 'scatter', mode = 'lines',
            hoverinfo = 'text', text = DT[,'executive']) %>% 
      layout(yaxis = list(title = input$var_y1))})
  
}
## STEP 5: RUN THE APP
shinyApp(ui = ui, server = server)