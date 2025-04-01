test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("test is_leap working", {
  expect_equal(is_leap(2000), TRUE)
})

test_that("test is_leap working", {
  expect_equal(is_leap(1800), FALSE)
})

test_that("test is_leap working with strings", {
  expect_equal(is_leap("The year is 2000 CE"), TRUE)
  expect_equal(is_leap("asdfghjkl2000asdfghjkl"), TRUE)
})

# test_that("test is_leap error", {
#   expect_error(is_leap("The year is ___ CE"))
# })