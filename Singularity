Bootstrap: docker
From: library://richelbilderbeek/default/plinkr:v0.15.2 

%post
    Rscript -e 'remotes::install_github("richelbilderbeek/gcaer")'

    Rscript -e 'gcaer::install_gcae(gcae_options = create_gcae_options(gcae_folder = "/opt/gcaer"))'

%runscript
exec R --vanilla --silent --no-echo "$@"

%test
    Rscript -e 'gcaer::is_gcae_installed(gcae_options = create_gcae_options(gcae_folder = "/opt/gcaer"))'

%help

This container has the R package gcaer and GCAE installed.

To make the container run a script called, e.g. `script.R`, do:

```
cat script.R | ./gcaer.sif
```

Within the script, set `gcae_options` to `create_gcae_options(gcae_folder = "/opt/gcaer")`, for example:

```
library(gcaer)
gcae_options <- create_gcae_options(gcae_folder = "/opt/gcaer")
run_gcae(args = "--help", gcae_options = gcae_options)
```

%labels

    AUTHOR Richel J.C. Bilderbeek

    NAME plinkr
 
    DESCRIPTION The plinkr R package, with the multiple PLINK versions installed

    USAGE simply run the container

    URL https://github.com/richelbilderbeek/plinkr

    VERSION 0.15.2

