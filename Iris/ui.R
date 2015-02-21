shinyUI(navbarPage("Iris classifier",
                   tabPanel("App", sidebarLayout(
                       sidebarPanel(
                           h4("Set the parameters here:"),
                           sliderInput("sl", "Sepal Length [cm]", min=0, max=8, step=0.1, value=0, width="80%"),
                           sliderInput("sw", "Sepal Width [cm]", min=0, max=5, step=0.1, value=0, width="50%"),
                           sliderInput("pl", "Petal Length [cm]", min=0, max=7, step=0.1, value=0, width="70%"),
                           sliderInput("pw", "Petal Width [cm]", min=0, max=3, step=0.1, value=0, width="30%")
                           ),
                       mainPanel(
                           h2("Your iris is:"),
                           uiOutput("name"),
                           uiOutput("wiki"),
                           uiOutput("image")
                           )
                       )),
                   tabPanel("Documentation",
                            h3("Description"),
                            p("Take measurements of your iris flower and find out what species exactly you are dealing with."),
                            h3("Input"),
                            p("Values of your measurements are entered with sliders in the side panel. 
                              You can specify Sepal Length, Sepal Width, Petal Length and Petal Width."),
                            h3("Output"),
                            p("The output is displayed in the main panel. These are species name, picture and a link to the WP article about this species."),
                            h3("Details"),
                            p("The application allows to distinguish between ",
                              em("Iris setosa"), ", ",
                              em("Iris versicolor"), " and ",
                              em("Iris virginica"),
                              ". The species is calculated using a random forest model built on", code("iris"), "data set from", code("datasets"),
                              "package. Details about model building can be found at .........................."),
                            h3("Examples"),
                            p("Sepal Length=1.0, Sepal Width=1.0,  Petal Length=1.5, Petal Width=1.0"),
                            p("gives ", em("Iris setosa"),"."),
                            br(),
                            p("Sepal Length=7.0, Sepal Width=1.0,  Petal Length=1.5, Petal Width=1.0"),
                            p("gives ", em("Iris versicolor"),"."),
                            br(),
                            p("Sepal Length=1.0, Sepal Width=1.0,  Petal Length=6.0, Petal Width=1.0"),
                            p("gives ", em("Iris virginica"),"."),                           
                            h3("References"),
                            p("Fisher, R. A. (1936) 
                              The use of multiple measurements in taxonomic problems. 
                              Annals of Eugenics, 7, Part II, 179–188."),
                            p("Anderson, Edgar (1935) 
                              The irises of the Gaspe Peninsula. 
                              Bulletin of the American Iris Society, 59, 2–5."),
                            h5("Images"),
                            p(em("Iris setosa"),": ", a("http://commons.wikimedia.org/wiki/File:Kosaciec_szczecinkowaty_Iris_setosa.jpg", 
                                                        href="http://commons.wikimedia.org/wiki/File:Kosaciec_szczecinkowaty_Iris_setosa.jpg")),
                            p(em("Iris versicolor"),": ", a("http://commons.wikimedia.org/wiki/File:Blue_Flag,_Ottawa.jpg", 
                                                        href="http://commons.wikimedia.org/wiki/File:Blue_Flag,_Ottawa.jpg")),
                            p(em("Iris virginica"),": ", a("http://commons.wikimedia.org/wiki/File:Iris_virginica.jpg", 
                                                        href="http://commons.wikimedia.org/wiki/File:Iris_virginica.jpg"))
                            )
))


