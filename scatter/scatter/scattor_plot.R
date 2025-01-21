

carsDB <- read.csv("~/Downloads/carsDB.csv")
View(carsDB)

install.packages("ggplot2")

library("ggplot2")
ggplot(carsDB, aes(x=hp, y=wt, color =factor(cyl)))+
  geom_point()+geom_smooth(color = "blue", se=FALSE)+
  labs(title="Scatter Plot HP and WT with Smoothing",
       x ="Gross horsepower (hp)",
       y ="Weight 1000 lbs (wt)",
       color="cyl")


ggplot(carsDB, aes(cyl,wt ))+geom_boxplot(aes(fill = factor(cyl)))+
  labs(title="Boxplot cyl vs wt",
       x="Number of cylinders (cyl)",
       y="Weight 1000 lbs (wt)")+
  stat_summary(
    fun=mean,
    geom= "text",
    color="black",
    size =2,
    aes(label=paste("Mean:", round(after_stat(y), 1))))

