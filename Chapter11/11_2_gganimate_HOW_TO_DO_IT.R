
dt <- data.frame(Titanic)

library(ggplot2)
p <- ggplot(data = dt, aes(x = Class, fill = Survived, 
                           weight = Freq,frame = Sex)) +
  geom_bar(position = 'identity')

library(gganimate)
gganimate(p, interval = 2,
          filename = 'titanic.gif')
