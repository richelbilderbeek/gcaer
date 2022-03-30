#' Do a full `GCAE` experiment
#'
#' Do a full `GCAE` experiment
#' @inheritParams default_params_doc
#' @return a `gcae_experiment_results`
#' @author Richèl J.C. Bilderbeek
#' @export
do_gcae_experiment <- function(
  gcae_experiment_params,
  verbose = FALSE
) {
  gcaer::check_gcae_experiment_params(gcae_experiment_params)

  analyse_epochs <- gcae_experiment_params$analyse_epochs
  resume_froms <- c(0, analyse_epochs[-length(analyse_epochs)])
  n_epochs <- analyse_epochs - resume_froms

  # Results
  losses_from_project_table <- NA # Will be overwritten by each last project
  genotype_concordances_table <- NA # Will be overwritten by each last project
  scores_per_pops_list <- list()
  scores_list <- list()
  train_filenames <- NA # Will be overwritten by each last training session

  for (i in seq_along(n_epochs)) {

    if (verbose) {
      message(i, "/", length(analyse_epochs))
    }
    # Train to this 'epochs'

    # 'train_filenames' will overwrite/update the same files every epoch
    train_filenames <- gcae_train_more(
      gcae_setup = gcae_experiment_params$gcae_setup,
      resume_from = resume_froms[i],
      epochs = n_epochs[i],
      save_interval = n_epochs[i],
      verbose = verbose
    )
    if (verbose) {
      message(paste(train_filenames, collapse = "\n"))
    }
    project_filenames <- gcae_project(
      gcae_setup = gcae_experiment_params$gcae_setup,
      gcae_options = gcae_experiment_params$gcae_options,
      verbose = verbose
    )
    if (verbose) {
      message(paste(project_filenames, collapse = "\n"))
    }
    t_project_results <- gcaer::parse_project_files(project_filenames)
    # Will be overwritten each cycle, by tibbles with more info
    losses_from_project_table <- t_project_results$losses_from_project_table
    genotype_concordances_table <- t_project_results$genotype_concordances_table

    evaluate_filenames <- gcaer::gcae_evaluate(
      gcae_setup = gcae_experiment_params$gcae_setup,
      gcae_options = gcae_experiment_params$gcae_options,
      metrics = gcae_experiment_params$metrics,
      epoch = analyse_epochs[i],
      verbose = verbose
    )
    evaluate_results <- gcaer::parse_evaluate_filenames(
      evaluate_filenames = evaluate_filenames,
      epoch = analyse_epochs[i]
    )
    evaluate_results$t_scores_per_pop$epoch <- analyse_epochs[i]
    evaluate_results$t_scores$epoch <- analyse_epochs[i]
    scores_per_pops_list[[i]] <- evaluate_results$t_scores_per_pop
    scores_list[[i]] <- evaluate_results$t_scores
  }

  testthat::expect_equal(
    nrow(losses_from_project_table),
    length(gcae_experiment_params$analyse_epochs)
  )
  testthat::expect_equal(
    nrow(genotype_concordances_table),
    length(gcae_experiment_params$analyse_epochs)
  )
  losses_from_project_table$epoch <- gcae_experiment_params$analyse_epochs
  genotype_concordances_table$epoch <- gcae_experiment_params$analyse_epochs
  scores_per_pops_tables <- dplyr::bind_rows(scores_per_pops_list)
  scores_tables <- dplyr::bind_rows(scores_list)
  train_results <- gcaer::parse_train_filenames(train_filenames = train_filenames)

  gcae_experiment_results <- list(
    scores_per_pops_tables = scores_per_pops_tables,
    scores_tables = scores_tables,
    train_times_table = train_results$train_times_table,
    losses_from_train_t_table = train_results$losses_from_train_t_table,
    losses_from_train_v_table = train_results$losses_from_train_v_table
  )

  gcae_experiment_results
}