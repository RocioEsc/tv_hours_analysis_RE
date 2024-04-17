library(tidyverse)
library(here)


tv_hours_tabulations <- gss_cat %>%
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarize (mean_tv_hours = mean(tvhours, na.rm = T ))
  
write_csv(tv_hours_tabulations, here("TV_hours_by_Marital.csv"))
