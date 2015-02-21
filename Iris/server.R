library(stats)
library(caret)
library(randomForest)
load("model.RData")
names=c(setosa="Iris setosa", versicolor="Iris versicolor", virginica="Iris virginica")
wikis=c(setosa="http://en.wikipedia.org/wiki/Iris_setosa", 
        versicolor="http://en.wikipedia.org/wiki/Iris_versicolor", 
        virginica="http://en.wikipedia.org/wiki/Iris_virginica")
images=c(setosa="setosa.jpg", versicolor="versicolor.jpg", virginica="virginica.jpg")

x=0

shinyServer(
    function(input, output){
        p <- reactive(predict(model, list(Sepal.Length=input$sl,
                                          Sepal.Width=input$sw, 
                                          Petal.Length=input$pl, 
                                          Petal.Width=input$pw)))
        output$name <- renderUI({
            em(names[p()])
        })
        output$wiki <- renderUI({
            a(wikis[p()], href=wikis[p()])
        })
        output$image <- renderUI({
            img(src=images[p()])
        })
    }
)
