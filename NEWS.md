# News

Newest versions at top.

## gcaer v0.6.6 (unreleased)

### NEW FEATURES

 * Added 'check_pheno_model_filename'
 * Can run 'do_gcae_experiment' without a 'superpops'
 * Added 'get_gcae_model_ids'
 * Added 'get_gcae_pheno_model_ids'
 * Added 'get_gcae_pheno_model_filenames'
 * Added 'read_pheno_model_file'

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

## gcaer v0.6.5 (2022-04-08)

### NEW FEATURES

 * Add 'check_gcae_experiment_params_filename'
 * Add 'create_plots_from_gcae_experiment_results'
 * Add 'create_test_gcae_experiment_params'
 * Add 'read_gcae_experiment_params_file'
 * Add 'save_gcae_experiment_params'
 * Add 'save_gcae_experiment_results'

### MINOR IMPROVEMENTS

 * 'check_superpops' also checks for spaces in the filename

### BUG FIXES

 * None

## gcaer v0.6.4 (2022-03-30)

### NEW FEATURES

 * Add 'analyse_qt_prediction'
 * Add 'analyse_qt_prediction_depersonalized'
 * Add 'check_epoch'
 * Add 'check_metric'
 * Add 'check_metrics'
 * Add 'create_gcae_evaluate_args'
 * Add 'do_gcae_experiment'
 * Add 'gcae_evaluate'
 * Add 'gcae_train_more'
 * Add 'read_gcae_options_file'
 * Add 'read_gcae_setup_file'
 * Add 'rename_files'
 * Add 'save_gcae_options'
 * Add 'save_gcae_setup'

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

## gcaer v0.6.3 (2022-03-08)

### NEW FEATURES

 * Add 'check_gcae_experiment_params'
 * Add 'check_gcae_input_files'
 * Add 'create_gcae_input_data'
 * Add 'create_gcae_experiment_params'
 * Add 'create_test_gcae_input_data'
 * Add 'create_test_gcae_input_filenames'
 * Add 'get_test_labels_table'
 * Add 'resize_to_shared_individuals_from_data'
 * Add 'resize_to_shared_individuals_from_files'
 * Add 'save_gcae_input_data'
 * Add 'summarise_gcae_input_data'
 * Add 'summarise_gcae_input_files'

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * Use 'save_labels_table' instead of 'save_labels_file', as the function
   saves a 'label_table'

## gcaer v0.6.1 (2022-02-22)

### NEW FEATURES

 * Fix `GenoCAE`'s `Pheno` branch to work well with `gcaer`
 * Add `check_gcae_input_data` to check that the data can be read by `GenoCAE`
   and to give a clear error when it cannot
 * Added `read_labels_file` and `save_labels_table` to work with a `GenoCAE`
   labels file

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.6 (2022-01-26)

### NEW FEATURES

 * `gcae_folder` must be the path to `GenoCAE`

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.5.1 (2022-01-25)

### NEW FEATURES

 * Can specify a separate `GenoCAE` and `ormr` folder

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.5 (2022-01-14)

### NEW FEATURES

 * Can run GenoCAE from R and do the core of the workflow

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.4 (2021-12-03)

### NEW FEATURES

 * Singularity container is based on the `ormr` Singularity container 
   (which is subsequently based upon the `plinkr` Singularity container)
 * Fixes [bug in GenoCAE](https://github.com/kausmees/GenoCAE/issues/19),
   use [the richelbilderbeek Fork of GCAE](https://github.com/richelbilderbeek/GenoCAE)
   as the main repo
 * Can run `gcae_train` on a phenotype

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.3 (2021-07-30)

### NEW FEATURES

 * Added Singularity container

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.2 (2021-07-09)

### NEW FEATURES

 * Can project GCAE using `gcae_project`
 * Can plot the results of the GCAE using `gcae_plot`

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

## gcaer v0.1 (2021-07-01)

### NEW FEATURES

 * Can install and uninstall GCAE
 * Can run GCAE using `run_gcae`
 * Can train GCAE using `gcae_train`

### MINOR IMPROVEMENTS

 * None

### BUG FIXES

 * None

### DEPRECATED AND DEFUNCT

 * None

