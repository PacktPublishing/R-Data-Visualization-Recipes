## STEP 1: DESING A CUSTOM THEME FUNCTION
theme_custom <- function(s.legend1 = 14, 
                         s.legend2 = 14,
                         s.axes1 = 14, 
                         s.axes2 = 15, ...){
  theme_classic() +
    theme(legend.text = element_text(size = s.legend1),
          legend.title = element_text(size = s.legend2),
          axis.text = element_text(size = s.axes1),
          axis.title = element_text(size = s.axes2),
          plot.title = element_text(size = 18), ...)}
## STEP 2: TEST IT
bubble + theme_custom()