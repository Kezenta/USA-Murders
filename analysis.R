load("rda/murders.rda")
r<-murders %>% 
  summarise(rate=sum(total)/sum(population)*10^6) %>% .$rate
murders %>% ggplot(aes(population/10^6,total,label=abb))+
  geom_point(aes(col=region),size=3)+
  geom_text_repel()+
  geom_abline(intercept = log10(r),lty=2,col="darkgrey")+
  scale_x_log10()+
  scale_y_log10()+
  theme_economist()+
  labs(title="US gun murder rate in 2010",xlab="population in million(log scale)",
       ylab="total number of murders(log scale)", col="Region")





