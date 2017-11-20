library(DAAG) ; library(ggplot2)
ggplot(anesthetic, aes(x = conc, fill = factor(move))) + 
  geom_dotplot(binwidth = .2, binpositions = 'all', stackgroups = T) + coord_fixed(ratio = 1.4) +
  scale_y_continuous(name = NULL, breaks = NULL)