# To convert an R script to an Rmarkdown document, with chunks:
knitr::spin("src/live_coding.R")
knitr::spin("src/live_coding.R", knit = T)  # to compile after converting

# or using the notebook icon, above, which executes:
rmarkdown::render("src/live_coding.R")

# you can also set:
rmarkdown::render("src/live_coding.R", "pdf_document")
