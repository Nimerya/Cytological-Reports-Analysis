library("FactoMineR")
library("ggplot2")
library("factoextra")
library("GGally")

# setup working directory
(WD <- getwd())
if (!is.null(WD)) 
  setwd(WD)

# import data
data <- read.csv("data/report_anonymous_clean.csv", header = TRUE, sep = ";")
data <- data[, c(2,15,16,32)]
data <- na.omit(data)
res.famd <- FAMD(data, graph = FALSE)

plot(fviz_screeplot(res.famd))

plot(fviz_famd_var(res.famd))

plot(fviz_famd_var(res.famd, "quanti.var", repel = TRUE, col.var = "black"))

plot(fviz_famd_var(res.famd, "quali.var", col.var = "black"))

#plot(fviz_famd_ind(res.famd, col.ind = "cos2",
#              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
#              repel = TRUE))



# http://www.sthda.com/english/rpkgs/factoextra/reference/fviz_famd.html