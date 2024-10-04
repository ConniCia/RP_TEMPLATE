############################################################################## #
#                                                                              #
#                            TEMPLATE FOR R PROJECT                            #
#                                                                              #
#         Please feel free to modify this code to suit your purposes.          #
#                                                                              #
#  If you share this code further, please include the following accreditation: #
#                                                                              #
#                       Constanze Ciavarella                                   #
#                       Institut Pasteur                                       #
#                       constanze.ciavarella@pasteur.fr                        #
#                       ciavarella.constanze@gmail.com                         #
#                                                                              #
############################################################################## #

create_example_data <- function () {
  
  # do this whenever you do stochastic sampling -> it will make your code reproducible
  set.seed(1)
  
  # sample from three different normal distributions
  bind_rows(
    tibble(
      type  = "a",
      value = rnorm(n = 150, mean = 150, sd = 200)
    ),
    tibble(
      type  = "b",
      value = rnorm(n = 300, mean = 1000, sd = 200)
    ),
    tibble(
      type  = "c",
      value = rnorm(n = 300, mean = 1200, sd = 200)
    )
  ) %>%
    # write data to file
    write_csv(file = "data/raw/original_data.csv")
  
}