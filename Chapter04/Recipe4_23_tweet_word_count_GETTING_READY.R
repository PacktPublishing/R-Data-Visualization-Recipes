## INSTALLING PACKAGES
if(!require(rtweet)){ install.packages('rtweet')} 
if(!require(rcorpora)){ install.packages('rcorpora')}
if(!require(dplyr)){ install.packages('dplyr')}
if(!require(tidytext)){ install.packages('tidytext')}
## IMPORTING LATEST 600 TWEETS
library(rtweet)
hadley_wisdow <- get_timeline(user = 'hadleywickham', n = 600)
## CHOOSING NOT DESIRABLE WORDS
library(rcorpora)
corpora_stop <- corpora("words/stopwords/en")$stopWords
my_stop <- c('https','rt','t.co')
## CLEANING DATA
library(dplyr);library(tidytext)
hadley_wisdow <- hadley_wisdow %>%
  unnest_tokens(word, text) %>%
  count(word, sort = TRUE) %>%
  filter(!word %in% c(corpora_stop,my_stop))
## PICKING ONLY THE TOP 10
hadley_wisdow <- hadley_wisdow[1:10,]