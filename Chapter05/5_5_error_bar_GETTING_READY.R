if( !require(car)){ install.packages('car')}
new_data <- aggregate(x = list( mean_salary = car::Salaries$salary), 
                      by = list(rank = car::Salaries$rank,
                                sex = car::Salaries$sex), 
                      FUN = mean) 