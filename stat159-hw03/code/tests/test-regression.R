# Load the source code of the functions to be tested
source("../functions/regression-functions.R")

# Residual Sum Squares
context("Residual Sum Squares") 

test_that("RSS works as expected", {
  reg <- lm(mpg ~ disp + hp, data=mtcars)
  
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
})

test_that("Only takes lm() as argument", {
  x <- lm(mpg ~ wt, data=mtcars)
  
  expect_that(x, is_a("lm"))
  expect_that(residual_sum_squares(1), throws_error())
  expect_that(residual_sum_squares('a'), throws_error())
})

# Total Sum Squares
context("Total Sum Squares") 

test_that("TSS works as expected", {
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
})

test_that("Only takes lm() as argument", {
  x <- lm(mpg ~ wt, data=mtcars)
  
  expect_that(x, is_a("lm"))
  expect_that(total_sum_squares(1), throws_error())
  expect_that(total_sum_squares('a'), throws_error())
})

# R Squared
context("R Squared") 

test_that("R Squared works as expected", {
  reg <- lm(mpg ~ disp + hp, data=mtcars)
  regsum <- summary(reg)
  
  expect_equal(r_squared(reg), regsum$r.squared)
})

test_that("R Squared is between 0 and 1", {
  reg <- lm(mpg ~ disp + hp, data=mtcars)  
  
  expect_true(r_squared(reg) >= 0)
  expect_true(r_squared(reg) <= 1)
  expect_false(r_squared(reg) < 0)
  expect_false(r_squared(reg) > 1)
})

test_that("Only takes lm() as argument", {
  x <- lm(mpg ~ wt, data=mtcars)
  
  expect_that(x, is_a("lm"))
  expect_that(r_squared(1), throws_error())
  expect_that(r_squared('a'), throws_error())
})


# F Statistic
context("F Statistic") 

test_that("R Squared works as expected", {
  reg <- lm(mpg ~ disp + hp, data=mtcars)

  expect_true(f_statistic(reg) >= 41)
  expect_true(f_statistic(reg) <= 42)
})

test_that("Only takes lm() as argument", {
  x <- lm(mpg ~ wt, data=mtcars)
  
  expect_that(x, is_a("lm"))
  expect_that(f_statistic(1), throws_error())
  expect_that(f_statistic('a'), throws_error())
})

# Residual Sum of Error
context("Residual Sum of Error") 

test_that("RSE works as expected", {
  reg <- lm(mpg ~ disp + hp, data=mtcars)
  regsum <- summary(reg)
  
  expect_equal(residual_std_error(reg), regsum$sigma)
})

test_that("Only takes lm() as argument", {
  x <- lm(mpg ~ wt, data=mtcars)
  
  expect_that(x, is_a("lm"))
  expect_that(residual_std_error(1), throws_error())
  expect_that(residual_std_error('a'), throws_error())
})
