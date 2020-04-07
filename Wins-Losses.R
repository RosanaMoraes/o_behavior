library(dplyr)
library(tidyverse)

setwd("~/Dropbox (Smithsonian)/Code Used for Analysis/oryx_b")

obs <- read.csv("obs_sub.csv")
summary(obs)



wins <- obs %>% 
  filter(Win == 1) %>% 
  group_by(Subject, Opponent)  %>% 
  summarize(n=n())
wins

wins1 <- obs %>% 
  filter(Win == 1) %>% 
  group_by(Subject, Opponent)  %>% 
  summarize(n=n()) %>% 
  spread(Opponent, n)
wins1

losses <- obs %>% 
  filter(Loose == 1) %>% 
  group_by(Subject, Opponent)  %>% 
  summarize(n=n())
losses

losses1 <- obs %>% 
  filter(Loose == 1) %>% 
  group_by(Subject, Opponent)  %>% 
  summarize(n=n()) %>% 
  spread(Opponent, n)
losses1
