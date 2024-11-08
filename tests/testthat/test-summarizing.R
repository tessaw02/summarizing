test_that("Only summarizes numerical data", {
  df <- data.frame(
    category = c("A", "B", "C"),
    group = c("X", "Y", "Z"))
  expect_error(data_summary(df))
})

test_that("data_summary output is a list", {
  df <- data.frame(
    value1 = c(1, 2, 3),
    value2 = c(4, 5, 6))
  expect_type(data_summary(df), "list")
})

