clean_raw_data <- function () {
  
  # read in raw data
  read_csv(file = "data/raw/original_data.csv") %>%
    # remove samples where value is negative
    filter( ! (value < 0) ) %>%
    # compute mean value and 95% interval by type
    group_by(type) %>%
    mutate(
      m  = mean(value),
      q1 = quantile(value, probs = 0.025),
      q2 = quantile(value, probs = 0.975)
    ) %>%
    ungroup() %>%
    # round all numeric values to n decimal places
    round_numerics(n = 1) %>%
    # create character column with mean and 95% interval
    create_interval_column() %>%
    # write cleaned data to file
    write_csv(file = "data/output/cleaned_data.csv")
  
}


# helper function 1: round all numeric values to n decimal places
round_numerics <- function (dt, n) {
  
  dt <-
    dt %>%
    mutate(
      across(
        where(is.numeric),
        ~ round(.x, digits = n)
      )
    )
  
  # explicitly return result
  return(dt)
}


# helper function 2: create character column with mean and 95% interval
create_interval_column <- function (dt) {
  
  dt %>%
    mutate(
      m_and_95_interval = paste0(m, " (", q1, "-", q2, ")")
    )
  
  # implicitly return result
  
}