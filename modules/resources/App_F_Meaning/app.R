#source("modules/resources/SS_CommonCode.R")
source("SS_CommonCode.R")
make_plot <- function(df,dfsum,a) {
  main <- main %+% filter(df,alpha==a)
  SS <- SS %+% filter(dfsum,alpha==a)
  F <- F %+% filter(dfsum,alpha==a)
  p <- p %+% filter(dfsum,alpha==a)
  vis <- main + SS + F + p + plot_layout(nrow=1,widths=c(0.65,0.15,0.1,0.1))
  print(vis)
}


# Define UI for application that draws a histogram
ui <- fluidPage(
  # Application title
  titlePanel("Explore F-Ratio and p-value"),
  # Brief description
  "The graphic below shows obserations relative to a grand mean (horizontal red bar) and two group means (horizontal blue lines). Residuals from group means are shown with vertical blue dashed lines and the difference between the group means and the grand mean are shown with vertical red dashed lines. You can alter the difference between the group means and the grand mean with the slider bar to see how this affects SSTotal and its two components -- SSWithin (height of blue bar on right) and SSAmong (height of red bar on right) -- and the F-ratio test statistic and corresponding p-value.",

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("alpha",
                  "Difference in Group Means from Grand Mean:",
                  min = 0,
                  max = max(alphas),
                  value = 0)
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
