library(DAAG); library(ggplot2)
ggplot(anesthetic, aes(x = factor(conc), fill = factor(move))) + 
  geom_dotplot(binpositions = 'all', stackgroups = T, dotsize = 6) +
  scale_y_continuous(name = NULL, breaks = NULL)