#' Create README.md files
#'
#' This function creates README.md in the Innovation Team templates for the standard
#' file structure
#'
#'@param template Which README.md files should be created? Default is all. Partial
#'matching does work.
#'@param path Where should they be created? Default is the working directory.
#'@return
#'This function creates the desired README files. It will not overwrite the file
#'however if it does not exists. It does not return anything.
#'@keywords README README.md
#'@export

create_readme = function(template = c('Overview', 'Documents', 'Code', 'DataRaw',
                                      'DataProcessed', 'DataOutput', 'Figures', 'Deliverables',
                                      'Reports'), path = getwd()){
  # set which README.md files to create
  template = match.arg(template, several.ok = T)

  # create list with lines for each template
  README = list()

  README$Overview = c("# Overview  ",
                    "  ",
                    "This folder contains the scope of work and other relevant information for the project.  ",
                    "  ",
                    "Details about the files:  ",
                    "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  README$Documents = c("# Documents  ",
                         "  ",
                         "This folder contains documents provided by the client and the data analysis plan.  ",
                         "  ",
                         "Details about the files:  ",
                         "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  README$Code = c("This folder contains the code and scripts.  ",
                   "  ",
                   "Details about the files in this folder:",
                   "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  README$DataRaw = c("# Raw Data",
                      "  ",
                      "Details about the files:  ",
                      "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  README$DataProcessed = c("# Processed Data  ",
                            "  ",
                            "Scripts that created the files in this folder:  ",
                            "  ",
                            "File |  Script  |  Description",
                  " ",
                            "-----|--------------------|---------------------------------------------------",
                            "  ")
  README$DataOutput = c("# Output Data",
                      "  ",
                      "Details about the files:  ",
                      "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  README$Figures = c("# Figures & Graphs",
                      "  ",
                      "Details about the files:  ",
                      "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  README$Deliverables = c("# Deliverables",
                            "  ",
                            "This folder contains technicals notes, abstracts, posters, slides, and anything else produced for final delivery. ",
                            "  ",
                            "Details about the files:  ",
                            "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")
  README$Reports = c("# Reports",
                      "  ",
                      "This folder contains the Quarto/RMardown scripts and html/pdf output of reports.  ",
                      "  ",
                      "Details about the files:  ",
                      "  ",
                    "File |  Description",
                    " ",
                    "-----|---------------------------------------------------------------------",
                    "  ",
                    "")

  # Function for creating the directory

  createDir = function(x) {

    paste0(path, '/', x)

      }

  createFiles = function(x) {

    file.path(path, paste0(x, '/README.md'))

  }

  README = README[template]

  pathnames = sapply(names(README), createDir)
  dir_created = lapply(pathnames, dir.create, showWarnings = F, recursive = T)
  con = lapply(names(README), createFiles)
  doNotOverwrite = sapply(con, file.exists)
  README = README[!doNotOverwrite]
  con = con[!doNotOverwrite]
  files_created = mapply(writeLines, lapply(README, paste0, collapse = '\n'), con)
}
