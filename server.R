
library(shiny)
library(ggplot2)
shinyServer(function(input, output){
        output$plot1 <- renderPlot({
                Titanic_df <- as.data.frame(Titanic)
                x <- as.character(input$x)
                g <- as.character(input$group)
                ggplot()+
                        geom_col(aes(x = Titanic_df[,x], y = Titanic_df$Freq,
                                     fill = Titanic_df[,g]))+
                        xlab(label = x)+
                        ylab(label = "Count")+
                        guides(fill = guide_legend(title = g))+
                        theme_minimal()
        })
})
