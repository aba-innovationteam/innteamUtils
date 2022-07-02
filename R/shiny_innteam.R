
shiny_innteam = function(path, ...) {

  # ensure path exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  dots = list(...)
  attach(dots)
  on.exit(detach(dots))
  ProjectName = paste0(path)

  ### Setup ReadMe Files ----
  readme = c(paste0("# ", ProjectName, "  "),
              " ",
              paste0("**Client Name:**", " ", CLIENT, "  "),
              " ",
              paste0("**Project Description:**", " ", PROJECT, "  "),
              " ",
              paste0("**Data Scientist 1:**", " ", DS1, "  "),
              paste0("**Data Scientist 1:**", " ", DS2, "  "),
              "",
              paste0("# Folder Structure", "  "),
              " ",
              "Details about the folder structure:",
              '',
              "File          |  Description",
              " ",
              "--------------|----------------------------------------------------------",
              " ",
        paste("Overview      |  This folder contains the scope of work and ",
              "other relevant information for the project. "),
        paste("Documents     |  contains the background information provided ",
              "by the client and for the analysis"),
              "UI            |  contains all R scripts to create the User Interface.",
              "SERVER        |  contains the R scripts to build the server logic and its modules.",
              "INPUT         |  contains the processed data used for the App start up",
              "OUTPUT        |  contains the output data produced by the App",
        paste("SETUP         |  contains R scripts regarding packages, theme and other preparation tasks."),
              "SCRATCH       |  contains R scripts used for trial and building outside interactive env.")


  # write to readme file
  writeLines(paste0(readme, collapse = '\n'),
             con = file.path(path, "README.md"))

  # readme files

    ### Create Meta File ----
  # for project info
  if(meta) {

    dir.create(paste0(path, '/.ProjData'))
    ProjData = list(ProjectName = ProjectName, DS1 = DS1, DS2 = DS2, CLIENT = CLIENT, PROJECT = PROJECT)
    write.dcf(ProjData, file.path(path, '/.ProjData/Data.dcf'))

  }

  #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#
  ### Setup Git ----

  # add to current gitignore if exists
  if(file.exists(file.path(path, '.gitignore'))) {

    gitignore = readLines(con = file.path(path, '.gitignore'))

  } else {

    gitignore = NULL

  }
  # add R template gitignore
  # (source: https://github.com/github/gitignore/blob/master/R.gitignore)
  gitignore = paste0(c(gitignore,
                        "# History files",
                        ".Rhistory",
                        ".Rapp.history",

                        "# Session Data files",
                        ".RData",

                        "# User-specific files",
                        ".Ruserdata",

                        "# Example code in package build process",
                        "*-Ex.R",

                        "# Output files from R CMD build",
                        "/*.tar.gz",

                        "# Output files from R CMD check",
                        "/*.Rcheck/",

                        "# RStudio files",
                        ".Rproj.user/",

                        "# produced vignettes",
                        "vignettes/*.html",
                        "vignettes/*.pdf",

                        paste0("# OAuth2 token, see https://github.com/",
                               "hadley/httr/releases/tag/v0.3"),
                        ".httr-oauth",

                        "# knitr and R markdown default cache directories",
                        "/*_cache/",
                        "/cache/",

                        "# Temporary files created by R markdown",
                        "*.utf8.md",
                        "*.knit.md"), collapse = '\n')

  # by file type
  if(nodata == 'By File Type') {

    gitignore = paste0(c(gitignore,
                          "# R Data files",
                          "*.RData",
                          "*.rda",
                          "*.rdata",
                          "*.rda",
                          "# Text files",
                          "*.csv",
                          "*.dat",
                          "# Excel",
                          "*.xls*",
                          "*.xlsx*",
                          "# SAS",
                          "*.sas7bdat",
                          "*.xport",
                          "# Access",
                          "*.mdb"), collapse = '\n')
    }

    # by Folder
    if(nodata == "By Location"){

      gitignore = paste0(c(gitignore,
                            "DataRaw/*",
                            "DataProcessed/*",
                            "!*/README.md"), collapse = '\n')

    }


    # git initialize
    if(git_init){

      if (!requireNamespace('git2r', quietly = T)) {

        warning('git2r is required for git initialization')

      } else {

        tryCatch({

        writeLines(gitignore, con = file.path(path, '.gitignore'))
        repo = git2r::init(path)

        if(initcommit) {

          git2r::add(repo, 'README.md')
          git2r::commit(repo, message = 'Initial Commit')
          if(remote_origin != '') {
          system(paste('cd', path, '&& git push -u origin master'))

          }
        }
        }, error = function(e) {

          paste0('There was an error setting up the git repo',
                 e)

        })
      }
    }



}
