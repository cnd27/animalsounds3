test_that("animal_sounds produces expected strings", {
  dog_woof <- animal_sounds("dog", "woof")
  expect_equal(dog_woof, "The dog says woof!")
  expect_equal(animal_sounds("cat", "miaow"), "The cat says miaow!")
})
test_that("handles invalid inputs", {
  expect_error(animal_sounds("dog", c("woof", "bow wow wow")),
               class = "error_not_single_string")
})
