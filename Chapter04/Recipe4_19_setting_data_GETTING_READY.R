library(Ecdat) 
data_journals <- within(Journals, 
                        pub <- factor(pub, 
                               levels=names(sort(table(pub), 
                               decreasing=T))))
top5 <- levels(data_journals$pub)[1:5]
library(dplyr)
data_journals <- data_journals %>% filter(data_journals$pub %in% top5)