## REQUIRMENT: hadley_wisdow from RECIPE 4.8
hadley_wisdow$word <- factor(hadley_wisdow$word, 
                             levels = (hadley_wisdow$word[order(hadley_wisdow$n)]))library(ggplot2)
ggplot(hadley_wisdow, aes(x = word, weight = n)) + stat_count() + coord_flip() + xlab('')