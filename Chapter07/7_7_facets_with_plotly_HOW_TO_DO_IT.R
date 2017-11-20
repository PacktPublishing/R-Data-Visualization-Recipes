## STEP 1: MANIPULATE DATA
titanic <- as.data.frame(Titanic)
survived <- c('Yes','No')
count1 <- c(sum(titanic$Freq[ titanic$Survived == 'Yes' & 
                                     titanic$Age == 'Child']),
           sum(titanic$Freq[ titanic$Survived == 'No' & 
                                    titanic$Age == 'Child']))
count2 <- c(sum(titanic$Freq[ titanic$Survived == 'Yes' & 
                                     titanic$Age == 'Adult']),
           sum(titanic$Freq[ titanic$Survived == 'No' & 
                                    titanic$Age == 'Adult']))
## STEP 2: CREATE A DEFAULT TITLE LIST
title <- list(
  font = list(size = 18),
  xref = 'paper',
  yref = 'paper',
  yanchor = 'bottom',
  xanchor = 'center',
  align = 'center',
  x = .5,
  y = 1,
  showarrow = FALSE
)
## STEP 3: USING APPEND TO PROPERLY ATTACH TITLE
title1 <- append(title,list(text = 'Child'), 0)
title2 <- append(title,list(text = 'Adult'), 0)
## STEP 4: DRAW TWO SEPARATED BAR PLOTS
library(plotly)
b1 <- plot_ly(x = survived, y = count1, type = 'bar', 
              color = survived, showlegend = F) %>% 
  layout(annotations = title1)
b2 <- plot_ly(x = survived, y = count2, type = 'bar', 
              color = survived) %>% 
  layout(annotations = title2)
## STEP 5: JOIN THESE TWO TO FORM A FACETED LIKE BAR PLOT
subplot(b1,b2, shareY = T, titleX = T, titleY = T, 
        nrows = 1)