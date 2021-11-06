#pkgs <- c("factoextra",  "NbClust")
#install.packages(pkgs)
library(factoextra)
library(NbClust)
# Data Preparation
iris<-read.csv(C:\Users\CHAYMAE_AKK\Documents\AKKAOUI-O11\iris.csv)
df<-iris[ , c("Sepal.Length", "Sepal.Width", "Petal.Length")] 
df
head(df)
is.na(df)
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method")
