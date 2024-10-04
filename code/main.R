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

# ---------------------------------------------------------------------------- #
# Preliminaries                                                                #
# ---------------------------------------------------------------------------- #

# load all packages used in this project -> run these lines every time
library(tidyverse)
library(ggplot2)


# source all R scripts in the folder code/R/
list.files(path = "code/R", full.names = TRUE) %>%
  sapply(source) %>%
  invisible()



# ---------------------------------------------------------------------------- #
# Your analysis                                                                #
# ---------------------------------------------------------------------------- #

# First step in analysis (create bogus raw data)
create_example_data()


# Second step in analysis (clean raw data and compute summary statistics)
clean_raw_data()


# Third step in analysis (create density figure)
fig_densities()
