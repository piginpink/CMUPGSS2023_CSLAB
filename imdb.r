library(readr)
iris <- read_csv("IMDBdataset/iris.csv", 
                 col_names = FALSE, col_types = cols(X1 = col_double()))
colnames(iris) <- c("Petal.Length", "Petal.Width", "Sepal.Length", "Sepal.Width", "Species")
View(iris)

iris$Species <- as.factor(iris$Species)
print(sapply(iris, class))
print(table(iris$Species))