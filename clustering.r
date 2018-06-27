library(dplyr) # for data cleaning
library(ISLR) # for college dataset
library(cluster) # for gower similarity and pam
library(Rtsne) # for t-SNE plot
library(ggplot2) # for visualization

# setup working directory
(WD <- getwd())
if (!is.null(WD)) 
  setwd(WD)

set.seed(5)

# import data
df <- read.csv("data/report_anonymous_clean.csv", header = TRUE, sep = ";")
d <- df[, c(2,31,32)]
d <- na.omit(data)

gower_dist <- daisy(d, metric = "gower")
tsne_obj <- Rtsne(gower_dist, dims=2 ,is_distance = TRUE)
tsne_data = data.frame(tsne_obj1$Y, factor(g1$clusters))
colnames(tsne_data1)[3] = "cluster"


ggplot(aes(x = X1, y = X2), data = tsne_data) +
  geom_point(aes(color = cluster))

