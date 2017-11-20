library(ggplot2)
gg2_eco <- ggplot(data = data_journals, aes(x = pub))
gg2_eco + geom_bar(fill = 'white', color = 'darkblue', size = 1.5) + 
  geom_text(stat = 'count' ,aes(label = ..count..), 
            nudge_y = 1.5)