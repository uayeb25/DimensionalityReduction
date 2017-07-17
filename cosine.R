#install.packages("recommenderlab")
#install.packages("recosystem")

library(recommenderlab)
library(recosystem)


#Building model
model <- Recommender(real_ratings, method = "IBCF", 
                     param=list(normalize = "center", method="Cosine", k=350))


#Making predictions 
prediction <- predict(model, real_ratings[1:5], type="ratings")
as(prediction, "matrix")[,1:8]


