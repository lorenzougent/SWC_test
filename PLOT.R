df <-read.csv("Metadata.csv")

str(df)

library("ggplot2")

ggplot(data = df, aes(x = Timepoint, y = ph)) + geom_point(shape = 21)+ geom_line()

df$Reactor.cycle <- factor(df$Reactor.cycle)
class(df$Reactor.cycle)


p1 <- ggplot(data=df, aes(x = Timepoint, y = ph, fill=Reactor.phase)) 
       

p2 <- p1 + geom_point(shape=21, size=5)+ 
  geom_line()

p3 <- p2 + facet_grid(~Reactor.cycle)
p3


df$Reactor.phase
levels(df$Reactor.phase)
p4 <- p2 + facet_grid(Reactor.phase~Reactor.cycle)
levels(df$Reactor.cycle)
p4 + geom_line(aes(color=Reactor.phase))
