# TEMPLATE FOR R PROJECT

Please feel free to modify this code to suit your purposes.

If you share this code further, please include the following accreditation:

> Constanze Ciavarella, Institut Pasteur [constanze.ciavarella\@pasteur.fr](mailto:constanze.ciavarella@pasteur.fr){.email} [ciavarella.constanze\@gmail.com](mailto:ciavarella.constanze@gmail.com){.email}

## Goals of this template

-   Provide a low-effort organisational tool
-   Encourage structuring your analysis and code into clearly distinct steps
-   Streamline your code development by focusing on one analysis step at a time
-   Render your code more accessible to collaborators and reviewers

## Folder structure

-   `code/`: contains all code scripts
    -   `code/main.R`: the script you use to launch your analysis steps
    -   `code/R/`: contains other R script with function definitions
    -   `code/other_coding_language/`: can contain scripts in another coding language
-   `data/`: contains all the files used and/or created by your scripts
    -   `data/raw/`: contains the unmodified data at the basis of your analyses (these can be in .csv, .xml, or other formats)
    -   `data/output/`: contains data that has been created by your scripts (these will usually be .csv files)
    -   `data/figures/`: contains figures created by your scripts
-   `resources/`: contains notes and reference material that is useful for the project but that is NOT directly used in any of the code (e.g. your to-do list, ideas for analyses, or documents collaborators have shared with you)
-   `docs/`: contains documents prepared using the project's results (e.g. paper draft, slides for a presentation)

## Some tips for reproducibility

-   Regularly update your R packages by running `update.packages()`
-   Do NOT save your `.Rhistory` to file, rather save all the code you later want to refer back to in an R script
    -   Modify these options in RStudio under Tools \> Global Options and Tools \> Project Options.
-   Do NOT save your workplace (i.e. all the variables that are in the Environment tab of RStudio) to `.RData` and do NOT restore `.RData` from previous coding sessions when opening RStudio
    -   While it may seem convenient to pre-load the data you're working on into RStudio when opening the app, this is a surprisingly frequent source of bugs since you might inadvertently use variables that contain different data than you *think you remember* they do. The best option is to write data to file if you think you might want to re-use it later in the code.
    -   Modify the options on whether to save and restore the environment in RStudio under Tools \> Global Options and Tools \> Project Options.
    -   I got into the habit of doing the following: functions that are called from `code/main.R` should not `return()` anything, but should write their output to file. Whenever this output is needed again later in the code, it can easily be read again from file. (Note that I do regularly use `return()` for functions that are not called from `code/main.R`)
-   Regularly test the code you're currently developing in a 'fresh' environment, that is
    -   Remove all environment variables and unload all packages by running Session \> Restart R in RStudio
    -   Run the preliminary steps listed in your `code/main.R` file
    -   Test if the code you're currently developing works and gives the desired output
