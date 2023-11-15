library(modeldata)
library(tidymodels)


data(ames, package = "modeldata")
dim(ames)
# tidymodels_prefer() uses the conflicted package to handle
# common conflicts with tidymodels and other packages.
tidymodels_prefer()

ggplot(ames, aes(x = Sale_Price)) + 
  geom_histogram(bins = 50, col= "white") +
  labs(title = 'Sale prices of houses in Ames, Iowa') +
  theme_bw()

ggplot(ames, aes(x = Sale_Price)) + 
  geom_histogram(bins = 50, col= "white") +
  labs(title = 'Sale prices of houses in Ames, Iowa') +
  #scale_x_log10() +
  theme_bw()

ames <- ames |>
  mutate(Sale_Price = log10(Sale_Price))

ggplot(ames, aes(x = Sale_Price)) + 
  geom_histogram(bins = 50, col= "white") +
  labs(title = 'Log of Sale prices of houses in Ames, Iowa') +
  theme_bw()