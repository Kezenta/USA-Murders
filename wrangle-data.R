murders<-read.csv("data/murders.csv")
murders<-murders %>% mutate(region=factor(region),
                            rate=total/population*10^4)
save(murders,file = "rda/murders.rda")
murders
murders$state[min(murders$rate)]
murders$rate[murders$state=="Vermont"]
ind<- min(murders$rate)
murders$state[ind]
str(murders)
murders<-murders %>%  as.character(C(state))
