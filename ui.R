
library(shiny)

shinyUI(fluidPage(
        titlePanel("Explore the Titanic Data Set"),
        sidebarLayout(
                sidebarPanel(
                        h3("Choose Variables!"),
                        varSelectInput("x","X Axis",data = Titanic_df, multiple = FALSE),
                        varSelectInput("group","Group",data = Titanic_df, multiple = FALSE)
                ),
                mainPanel(
                        h3("Titanic"),
                        plotOutput("plot1"),
                        h4("Pick variables from the drop downs on the side panel to explore the
                           titanic dataset.")
                )
        )
))
