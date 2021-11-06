#pkgs <- c("factoextra",  "NbClust")
#install.packages(pkgs)
library(factoextra)
library(NbClust)
# Data Preparation
iris<-read.csv(D:\Downloads\iris.csv)
df<-iris[ , c("Sepal.Length", "Sepal.Width", "Petal.Length","Petal.Width")] 
df
head(df)
is.na(df)
# we will use fviz_nbclust fonction
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method")
df <- scale(df)
df
k2 <- kmeans(df, centers = 2, nstart = 25)
str(k2)
k2
set.seed(123)
final <- kmeans(df, 4, nstart = 25)
print(final)
fviz_cluster(final, data = df)
