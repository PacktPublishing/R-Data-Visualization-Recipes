library(DAAG) ; library(ggplot2)
gg2_anes <- ggplot(anesthetic, aes(x = conc, fill = factor(move))) + 
gg2_anes + geom_dotplot(binwidth = .2, 
               binpositions = 'all', 
               stackgroups = T)