

#' Launch Plotter
#' @description Launches the plotting app
#' @param list_of_datasets List of datasets which should be made available for selection when the app is launched
#' @return Launches App
#' @import dplyr shinydashboard ggplot2 shiny
#' @examples
#' \dontrun{
#' diamonds_sample <- ggplot2::diamonds[sample(1:nrow(diamonds),size=1000),]
#' launch_plotter(list(diamonds_sample = diamonds_sample, mtcars = mtcars, iris = iris))}
#' @export
launch_plotter <- function(list_of_datasets) {

  # Load UI & Server file
  source('./R/appUI.R', local = TRUE)
  source('./R/appServer.R',local=TRUE)


  #### Display reccomended plot lists #####


  applicable_plotlist <- function(x,y){

    plots <- vector()

    if (is.null(y)) {
      if (is.numeric(x)){
        plots <- c("geom_density","geom_histogram")
      } else {
        plots <- c("geom_bar")
      }

    } else if (is.factor(x) & is.numeric(y)) {
      plots <- c("geom_boxplot","geom_violin")
    } else if (is.numeric(x) & is.numeric(y)) {
      plots <- c("geom_point","geom_smooth","geom_line","geom_area","geom_text")
    } else {
      plots <- c("geom_bar")
    }
    plots

  }

  Type <- Aes <- Widget <- NULL
  g <- ggplot(aesthetics) + geom_bar(aes(Type)) + ggthemes::theme_hc()

  shinyApp(
    ui = appUI,
    server = appServer

  )
}
