#' Get the path to the GCAE output subfolder
#'
#' Get the path to the GCAE output subfolder.
#' This subfolder contains the output of one model
#' @inheritParams default_params_doc
#' @return full paths to the created files
#' @examples
#' get_gcae_output_subfolder()
#' get_gcae_output_subfolder(data = "HumanOrigins249_tiny")
#' get_gcae_output_subfolder(gcae_setup = create_gcae_setup())
#' get_gcae_output_subfolder(gcae_options = create_gcae_options())
#' @author Richèl J.C. Bilderbeek
#' @export
get_gcae_output_subfolder <- function(
  data = "HumanOrigins249_tiny",
  gcae_setup = create_gcae_setup(),
  gcae_options = create_gcae_options()
) {
  ae_out_folder <- gcaer::get_gcae_output_folder(gcae_options = gcae_options)
  ae_out_subfolder <- file.path(
    ae_out_folder,
    paste0(
      "ae.",
      gcae_setup$model_id, ".",
      gcae_setup$train_opts_id, ".",
      gcae_setup$data_opts_id, ".",
      data
    )
  )
  ae_out_subfolder
}