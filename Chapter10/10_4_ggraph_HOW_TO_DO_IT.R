## STEP 1: CREATE YOUR igraph OBJECT
library(car)
library(igraph)
graph <- graph_from_data_frame(Migration)
## STEP 2: CREATE A NEW NODE
tmp_dt <- Migration[1:10,]
V(graph)$pops66 <- tmp_dt$pops66[match(tmp_dt$source,V(graph)$name)]
## STEP 3: DRAW A NETORK TO DENOTE COMPLEXITY
set.seed(10)
library(ggraph)
ggraph(graph, layout = 'lgl') +  
  geom_edge_fan(aes(colour = migrants), alpha = .4) +
  geom_node_point(colour = 'darkgreen',size = 4) +
  theme_void()
## STEP 4: SIMPLIFY THE FIGURE
ggraph(graph, layout = 'star') +  
  geom_edge_fan(aes(colour = migrants, 
                    filter = migrants > 2*10^4), 
                width = 1, 
                arrow = arrow(length = unit(4, 'mm')), 
                end_cap = circle(9, 'mm')) +
  geom_node_label(aes(label = name, size = pops66)) +
  theme_void()