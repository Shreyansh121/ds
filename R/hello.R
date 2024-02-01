# This function plots a histogram and boxplot of a data set
plot_hist_box <- function(x) {
  # check if x is a numeric vector
  if (!is.numeric(x)) {
    stop("x must be a numeric vector")
  }

  # plot a histogram and boxplot side-by-side
  par(mfrow = c(1,2))
  hist(x, col = rainbow(30))
  boxplot(x, col = 'green')
  par(mfrow = c(1, 1))

  # display a numeric summary of the data
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x))
}
