library(ggvis)
data_journals$pub <- factor(data_journals$pub, levels = top5)
ggv_eco <- ggvis(data = data_journals, x = ~pub)
ggv_eco %>% layer_bars(stroke := 'black', fill := 'white')