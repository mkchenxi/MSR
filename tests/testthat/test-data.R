test_that("diffusion dataset loads with expected structure", {
  env <- new.env(parent = emptyenv())
  data("diffusion_data", package = "MSR", envir = env)
  expect_identical(ls(env), "diffusion_data")
  expect_s3_class(env$diffusion_data, "data.frame")
  expect_equal(dim(env$diffusion_data), c(175L, 3L))
  expect_identical(names(env$diffusion_data), c("product", "time", "no_of_adoptions"))
  expect_setequal(unique(env$diffusion_data$product), c(
    "Angry birds", "Music app downloads", "Caller tunes",
    "iPad / tablets", "Smartphones"))
})

test_that("Super Bock profiles have the expected attributes", {
  env <- new.env(parent = emptyenv())
  data("super_bock", package = "MSR", envir = env)
  expect_identical(ls(env), "super_bock")
  expect_s3_class(env$super_bock, "data.frame")
  expect_equal(dim(env$super_bock), c(936L, 8L))
  expect_identical(names(env$super_bock), c(
    "obs_id", "ratings", "respondent_id", "profile_id",
    "price", "brand", "capacity", "shape"))
  expect_identical(levels(env$super_bock$price), c("30ct", "50ct", "60ct", "70ct"))
  expect_identical(levels(env$super_bock$brand), c("Cristal", "Sagres", "Super Bock"))
  expect_identical(levels(env$super_bock$capacity), c("200ml", "250ml", "330ml"))
  expect_identical(levels(env$super_bock$shape), c("Long Neck", "Rocket", "Spanish"))
})

test_that("TiVo dataset loads with 23 variables", {
  env <- new.env(parent = emptyenv())
  data("tivo_data", package = "MSR", envir = env)
  expect_identical(ls(env), "tivo_data")
  expect_s3_class(env$tivo_data, "data.frame")
  expect_equal(dim(env$tivo_data), c(1000L, 23L))
  expect_true(all(c(
    "Annual Income (x1000 $)", "TV Viewing (hours/day)",
    "Purchasing Frequency (every x months)",
    "Favorite Feature: time shifting"
  ) %in% names(env$tivo_data)))
})
