# C\^3 Session 1

**Date**: Wed 26.10.2022 16:30 CET **Topics**: - Project structure - Documentation & reproducibility - Shiny runtime in an R markdown document for interactive input - Version control

## Contents

This was the launch event of the c\^3 community event.

The three folders included here are:

-   `LFQ_begin` - The project structure we began the session with.
-   `LFQ_alt_str` - An alternative data file structure.
-   `LFQ_end` = The end data structure and additional files from the session.

## Summary

This project gave us a great way to see lots of R's capabilities in action.

The students had a clear sense that they wanted to make sure the script worked well for any pair of data and legend files they received. To allow easy input for the end user they used a package to produce an GUI window, but that didn't work on macOS.

We saw a method to **interactively choose a value from a list** using only text and we began to construct a GUI using a shiny input widget, which can be easily introduced in an **interactive R markdown** document. We did finish that in the session, but it's included in the repo.

We also saw the beginning of **version control** using `git` and how RStudio helps you track the changes in your repo.

For some R basics, we saw how these students separated their function definitions and the R script, which was great, but we added on a `README.md` file to give new colleagues an idea of what is happening and also saw how we can convert an R script to R Markdown using `knitr::spin()` or to HTML with the notebook icon in RStudio.

Some striking features of the project were:

1.  There were many packages called, some of which were redundant. They had a fantastic way to check if the packages were installed and if not to install them. We cleaned up some of the list and discussed the [**renv**](https://rstudio.github.io/renv/articles/renv.html) package to register the version of the pacakges used so that in the future someone will be able to reproduce the workspace. 2. There were some modified versions of a package used, but the entire package was contained inside the project directory (see `LFQ_begin`). We didn't have time to go into this but discussed why this is a dodgy practice. Hopefully we'll get to cover it in more detail in the future. 3. For each experiment, there were two files to import the actal data and a legend file. The new structure made this easier and in the `LFQ_alt_str` directory, we explored another concept.
