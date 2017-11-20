library(ggplot2)
hadley_wisdow$word <- factor(hadley_wisdow$word, 
                 levels = (hadley_wisdow$word[order(hadley_wisdow$n)]))
gg2_hadley <- ggplot(data = hadley_wisdow, aes(x = n, y = word))
gg2_hadley + geom_point(size = 12, colour = 'lightblue') + 
  geom_text(aes(label = n), size = 5) + 
  geom_segment(aes(yend=word, 
                   x=min(n)-3, 
                   xend=n-3), 
               linetype="dashed", 
               size=0.1)