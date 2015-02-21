library (datasets)
data(iris)

library(caret)
set.seed(123)
inTrain=createDataPartition(iris$Species, p=0.75, list=FALSE)
training=iris[inTrain,]
testing=iris[-inTrain,]

set.seed(321)
model = train(Species ~ ., data=training, method="rf")
model
model$finalModel
pred = predict(model, newdata=testing)
confusionMatrix(pred, testing$Species)

save(model, file="model.RData")
load("model.RData")
