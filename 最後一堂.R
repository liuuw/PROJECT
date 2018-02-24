donor <- read.csv('https://goo.gl/tm9JQ5')

library('tidyverse')


donor %>% 
  filter(contributor_employer_name %in% c('MICROSOFT', 'THE COCA-COLA COMPANY'
                                          , 'NUCOR STEEL SEATTLE, INC.'
                                          , 'FARMERS INSURANCE' 
                                          , 'UNIVERSITY OF WASHINGTON')) %>% 
  group_by(contributor_employer_name) %>% 
  summarise(avg_amount = mean(amount), max_amount = max(amount))
library("ggplot2")
library(ggthemes)
donor1 <- donor %>% 
  filter(contributor_employer_name %in% c('MICROSOFT', 'THE COCA-COLA COMPANY'
                                          , 'NUCOR STEEL SEATTLE, INC.'
                                          , 'FARMERS INSURANCE' 
                                          , 'UNIVERSITY OF WASHINGTON'))%>%
  mutate(party = ifelse(party %in% NA, 'Unknown', as.character(party)))

donor1 %>% ggplot(aes(party)) + geom_bar() + theme_economist() + 
  labs(x = '', y = 'Donations (#)')
install.packages('knitr', dependencies = TRUE)




