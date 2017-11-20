## Plotting a bar graphic with aggregated data using geom_col()


# Step 1 - aggreagating into a frame
new_data <- aggregate(list(mean_salary = car::Salaries$salary),           # new frame is called new_data
                      list(rank = car::Salaries$rank,                     # aggregate() func does the trick
                           sex = car::Salaries$sex), mean)                # mean salary computated based on sex and rank

new_data                                                                  # meet data ;)       

# Step 2 - renaming x variable
library(dplyr)                                                            # loading dplyr
new_data <- rename(new_data, mean_salary = x)                             # renaming x variable

new_data$sex <- factor(new_data$sex, level = c('Male', 'Female'))         # changing levels from sex factor

library(ggplot2)                                                          # loading ggplot2
gg2_bar <- ggplot(new_data, aes(x = rank, y = mean_salary)) +             # mapping base coordinates
  geom_col(aes(fill = sex), position = 'dodge')                           # drawing bars