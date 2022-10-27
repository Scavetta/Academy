# Session 1 in-class notes

# How to make sure we install the right version of the packages?

# 1 - Check what we have and install specifically those versions.
Sys.info()
sessionInfo()
R.Version()

# 2 - Make a virtual environment

# See this [site](https://rstudio.github.io/renv/articles/renv.html)
# How to get only those files I want?


# Get the names of folders in the data dir ----
# ls() # list objects in my env
# getwd() # show where my working directory is pointing 

# list files in the working directory
# dir()
# list.files() 

data_folder <- "data/raw/"
p_avail <- list.files(path = data_folder)

# Choose files ----
# Uncomment one of the lines below
# protein <- "protein_x" # As an example
# protein <- select.list(sort(p_avail), multiple = F)

# Import the data ----
library(rio)
library(glue)
raw_data <- import(glue("{data_folder}{protein}/proteinGroups.txt"))
legend <- import(glue("{data_folder}{protein}/SampleTable.xlsx"))
