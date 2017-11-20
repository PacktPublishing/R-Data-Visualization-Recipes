library(ggvis)
box3 <- ggvis(data = car::Salaries, 
              x = ~rank, y = ~salary)
box3 %>% layer_boxplots()