fig_densities <- function () {
  
  # read data
  dt <- read_csv(file = "data/output/cleaned_data.csv")
  
  
  # transform data (if necessary)
  
  
  # create plot
  p <-
    ggplot(
      data = dt,
      mapping = aes(col = type, fill = type, x = value)
    ) +
    geom_density(alpha = 0.3) +
    geom_vline(
      mapping = aes(xintercept = m, col = type)
    ) +
    geom_text(
      # this part could be improved by using nudge_x and nudge_y or
      # geom_text_repel() from package ggrepel
      mapping = aes(x = m + 80, y = 0.0001, label = m)
    )
  
  
  # save plot to file
  ggsave(
    filename = "densities.png",
    plot = p,
    path = "data/figures/"
  )
  
}