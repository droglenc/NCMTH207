#source("modules/resources/SS_CommonCode.R")
source("SS_CommonCode.R")
make_plot <- function(df,dfsum,a) {
  main <- main %+% filter(df,alpha==a)
  SS <- SS %+% filter(dfsum,alpha==a)
  p <- main + SS + plot_layout(nrow=1,widths=c(0.8,0.2))
  print(p)
}


# Define UI for application that draws a histogram
ui <- fluidPage(
  # Application title
  titlePanel("Partitition Total SS"),
  # Brief description
  "The graphic below shows obserations relative to a grand mean (horizontal red bar) and two group means (horizontal blue lines). Residuals from group means are shown with vertical blue dashed lines and the difference between the group means and the grand mean are shown with vertical red dashed lines. You can alter the difference between the group means and the grand mean with the slider bar to see how this affects SSTotal and its two components -- SSWithin (height of blue bar on right) and SSAmong (height of red bar on right).",

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
