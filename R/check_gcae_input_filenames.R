#' Check if the GenoCAE input filenames \link{list} is valid.
#'
#' Check if the GenoCAE input filenames \link{list} is valid.
#' Will \link{stop} if not
#' @inheritParams default_params_doc
#' @return Nothing.
#' Will \link{stop} if the GenoCAE input filenames \link{list} is invalid.
#' @examples
#' # Create the files
#' gcae_input_filenames <- create_gcae_input_files_1()
#' check_gcae_input_filenames(gcae_input_filenames)
#'
#' # Clean up
#' file.remove(as.character(unlist(gcae_input_filenames)))
#' @author Richèl J.C. Bilderbeek
#' @export
check_gcae_input_filenames <- function(gcae_input_filenames) {
  testthat::expect_true(is.list(gcae_input_filenames))
  testthat::expect_true("bed_filename" %in% names(gcae_input_filenames))
  testthat::expect_true("bim_filename" %in% names(gcae_input_filenames))
  testthat::expect_true("fam_filename" %in% names(gcae_input_filenames))
  testthat::expect_true("phe_filename" %in% names(gcae_input_filenames))
  testthat::expect_true("labels_filename" %in% names(gcae_input_filenames))
}