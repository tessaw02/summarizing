test_that("Only summarizes numerical data", {
  df <- data.frame(
    category = c("A", "B", "C"),
    group = c("X", "Y", "Z"))
  expect_error(data_summary(df))
})

test_that("data_summary output is a list", {
  df2 <- data.frame(
    value1 = c(1, 2, 3),
    value2 = c(4, 5, 6))
  expect_type(data_summary(df2), "list")
})

test_that("data_summary contains correct statistics",{
  df3 <- data.frame(
    value1 = c(5, 15, 25),
    value2 = c(7, 24, 32))
  summarized <- data_summary(df3)
  expect_equal(summarized$value1_mean, mean(df3$value1, na.rm = TRUE))
})
