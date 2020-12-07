#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(patchwork)
library(dplyr)

ns <- c(A=10,B=10)
mu <- 100
alphas <- seq(0,10,1)
sigma_p <- 5

one_iter <- function(ns,mu,alpha,sigma_p) {
    mus <- c(A=mu-alpha,B=mu+alpha)
    dftotal <- sum(ns)-1
    dfamong <- 1
    dfwithin <- dftotal-dfamong
    SSwithin <- dfwithin*sigma_p^2
    SSamong <- dfamong*((diff(mus)/2)^2)
    SStotal <- SSwithin+SSamong
    y1 <- scale(rnorm(ns[1]))*sigma_p+mus[1]
    y2 <- scale(rnorm(ns[2]))*sigma_p+mus[2]
    dplyr::tibble(alpha=alpha,
                  grps=rep(c("A","B"),times=ns),
                  y=c(y1,y2),
                  mui=rep(c(mus[1],mus[2]),times=ns),
                  mu =mu,
                  residw=y-mui,
                  residt=y-mu)
}

df <- purrr::map_df(.x=alphas,.f=one_iter,ns=ns,mu=mu,sigma_p=sigma_p)

dfsum <- df %>%
    group_by(alpha) %>%
    summarize(SSTotal=sum(residt^2),
              SSWithin=sum(residw^2)) %>%
    mutate(SSAmong=SSTotal-SSWithin)


make_plot <- function(df,dfsum,a) {
    df <- df %>%
        mutate(grpjit=round(jitter(as.numeric(factor(grps)),0.5),4))
    df <- filter(df,alpha==a)
    SSrng <- c(0,max(dfsum$SSTotal))
    dfsum <- filter(dfsum,alpha==a)

    main <- ggplot(data=df) +
        geom_crossbar(mapping=aes(x=1.5,y=mu,ymin=mu,ymax=mu),
                      width=1.25,color="red") +
        geom_crossbar(mapping=aes(x=grps,y=mui,ymin=mui,ymax=mui),
                      width=0.25,color="blue") +
        geom_segment(mapping=aes(x=grpjit,xend=grpjit,y=y,yend=mui),
                     color="blue",linetype="dashed",size=1) +
        geom_point(mapping=aes(x=grpjit,y=y),
                   size=2.5,pch=21,fill="gray90",color="black") +
        geom_segment(mapping=aes(x=grps,xend=grps,y=mu,yend=mui),
                     color="red",linetype="dashed",size=1) +
        scale_x_discrete(name="Group") +
        scale_y_continuous(name="Y",limits=c(80,120)) +
        theme_classic() +
        theme(axis.text=element_text(size=14),
              axis.title=element_text(size=16))

    SS <- ggplot(data=dfsum,mapping=aes(x=1)) +
        geom_bar(mapping=aes(y=SSTotal),stat="identity",
                 width=0.1,color="black",fill="blue") +
        geom_bar(mapping=aes(y=SSAmong),stat="identity",
                 width=0.1,color="black",fill="red") +
        annotate(geom="text",label=expression(SS[Total]),parse=TRUE,
                 x=1,y=dfsum$SSTotal,vjust=-0.5,size=6) +
        annotate(geom="text",label=expression(SS[Within]),parse=TRUE,
                 x=1,y=dfsum$SSAmong,vjust=-0.5,color="white",size=6) +
        annotate(geom="text",label=expression(SS[Among]),parse=TRUE,
                 x=1,y=dfsum$SSAmong,vjust=1.4,color="white",size=6) +
        scale_x_continuous(name=element_blank(),labels=element_blank(),breaks=NULL) +
        scale_y_continuous(name=element_blank(),labels=element_blank,breaks=NULL,
                           limits=SSrng,expand=expansion(c(0,0.10))) +
        theme_minimal()

    p <- main + SS + plot_layout(nrow=1,widths=c(0.8,0.2))
    print(p)
}


# Define UI for application that draws a histogram
ui <- fluidPage(


    # Application title
    titlePanel("Partitition Total SS"),

    "The graphic furter below shows obserations relative to a grand mean (horizontal red bar) and two group means (horizontal blue lines). Residuals from group means are shown with vertical blue dashed lines and the difference between the group means and the grand mean are shown with vertical red dashed lines. You can alter the difference between the group means and the grand mean with the slider bar to see how this affects SSTotal and its two components SSWithin (height of blue bar on right) and SSAmong (height of red bar on right).\n\n",

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("alpha",
                        "Difference in Group Means from Grand Mean:",
                        min = 0,
                        max = max(alphas),
                        value = 5)
        ),

        # Show a plot
        mainPanel(
            plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        make_plot(df,dfsum,input$alpha)
    })
}

# Run the application
shinyApp(ui = ui, server = server)
