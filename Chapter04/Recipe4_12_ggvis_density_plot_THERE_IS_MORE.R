library(ggvis)
ggv_petal <- iris %>% group_by(Species) %>% ggvis(~Petal.Length, fill = ~Species)
ggv_petal %>% layer_densities()