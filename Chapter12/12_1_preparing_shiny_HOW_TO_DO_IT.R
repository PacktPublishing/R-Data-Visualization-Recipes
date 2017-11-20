## STEP 1: INSTALL shiny FROM THE GITHUB REPOSITORY
if(!require(devtools)){install.packages('devtools')}
if(!require(shiny))
{devtools::install_github('rstudio/shiny')}
## STEP 2: LOAD SHINY
library(shiny)
## STEP 3: CREATE A USER INTERFACE
ui <- fluidPage(
  title = 'Hello World',
  
  titlePanel('hello_world'),
  
  sidebarLayout(
    sidebarPanel('togges usually are here',
                 br('more toggles')),
    mainPanel('this is the main panel',
              br('plots usually goes here'))
  )
  
)
## STE 4: CREATE A server FUNCTION
server <- function(input,output){}
## STEP 5: RUN THE APP
shinyApp(ui = ui, server = server)