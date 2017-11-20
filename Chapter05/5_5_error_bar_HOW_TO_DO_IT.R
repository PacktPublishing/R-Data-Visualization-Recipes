new_data$max_salary <- aggregate(list(max_salary = car::Salaries$salary),           # 
                           list(rank = car::Salaries$rank,                          # 
                           sex = car::Salaries$sex), max)$max_salary                # 

new_data$min_salary <- aggregate(list(min_salary = car::Salaries$salary),           # 
                                 list(rank = car::Salaries$rank,                    # 
                                      sex = car::Salaries$sex), min)$min_salary     #

ggplot(new_data, aes(x = rank, y = mean_salary, fill = sex)) +                      # 
  geom_col(position = 'dodge') +                                                    # 
  geom_errorbar(aes(ymin = min_salary, ymax = max_salary), position = 'dodge')      #