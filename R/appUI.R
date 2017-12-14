appUI <- shinyUI({

    dashboardPage(
    dashboardHeader(title = "Plotter"),
    dashboardSidebar(
    sidebarMenu(
      menuItem("Read Me", tabName = "readme", icon = icon("dashboard")),
      menuItem("Build a Plot", tabName = "datasets", icon = icon("dashboard"))

    )
  ),
  dashboardBody(
    shinyjs::useShinyjs(),

    tabItems(

      # Dataset Tab
      tabItem(tabName = "datasets",

              fluidRow(
                tabBox(title = "", width = 6,
                       tabPanel("Select data",
                                uiOutput("choose_dataset")
                       ),


                       tabPanel("Variables & plot type",
                                sliderInput("add_layers","Add additional layer",min=1,max=3,step=1,value=1),

                                uiOutput("select_var"),
                                uiOutput("select_plot"),
                                uiOutput("show_all_plots")


                       ),
                       tabPanel("Other aesthetics & Controls",

                                uiOutput("show_aesthetics_control"),
                                uiOutput("map_aesthetic_to_var"),
                                uiOutput("manual_aesthetic_control"),
                                uiOutput("reset_buttons")

                       ),

                       tabPanel("Themes",
                                selectInput("select_theme","Select theme", choices = c("",as.character(unlist(themes)))),
                                textInput("add_title","Add Plot Title", value = "")
                       )


                ),

                box(title = "Plot Output", status = "primary", solidHeader = T, width = 6,

                    conditionalPanel(
                      condition = "input.switch_interactivity % 2 == 0",
                      plotOutput("plot_output")
                    ),
                    conditionalPanel(
                      condition = "input.switch_interactivity % 2 != 0",
                      plotly::plotlyOutput("interactive_plot_output")
                    ),

                    shinyBS::bsButton("switch_interactivity","Switch ON Interactivity", style = "primary"),
                    h4(strong("Underlying Code"),style="color:brown"),
                    textOutput("plot_code")
                )
              )

      ),
      tabItem(tabName = "readme",
              fluidRow(
                box(title = "Read Me", status = "primary", solidHeader = T, width = 12,
                    htmlOutput("read_me")
                )
              )
      )
    )
  )
    )
})

