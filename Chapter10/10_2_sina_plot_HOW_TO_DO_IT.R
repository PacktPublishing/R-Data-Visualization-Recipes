## STEP 1: LOAD PACKAGES AND SET SEED
library(ggforce)
library(ggplot2)
set.seed(10)
## STEP 2: DRAW YOUR SINA PLOT
ggplot(data = car::Salaries,
       aes(x = rank, 
           y = salary)) +
  geom_sina(aes(color = sex), alpha = .5)