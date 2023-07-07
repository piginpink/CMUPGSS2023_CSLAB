library(readr)
iris <- read_csv("iris.csv", 
                 col_names = FALSE, col_types = cols(X1 = col_double()))
colnames(iris) <- c("Petal.Length", "Petal.Width", "Sepal.Length", "Sepal.Width", "Species")
# View(iris)

iris$Species <- as.factor(iris$Species)

# Establish the class of each column of the data frame
print(sapply(iris, class))


# Visualize the distribution of Species in a frequency table
print(table(iris$Species))