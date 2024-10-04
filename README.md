# Template for research projects in R

Please feel free to modify this code to suit your purposes.

If you share this code further, please include the following accreditation:

> Constanze Ciavarella, Institut Pasteur, [constanze.ciavarella\@pasteur.fr](mailto:constanze.ciavarella@pasteur.fr),  [ciavarella.constanze\@gmail.com](mailto:ciavarella.constanze@gmail.com)

## Goals of this template

-   Provide a low-effort organisational tool
-   Encourage structuring your analysis and code into clearly distinct steps
-   Streamline your code development by focusing on one analysis step at a time
-   Render your code more accessible to collaborators and reviewers

## How to use this template

-   Click on the big green `Code` button above and then on `Download ZIP`
-   Unzip the downloaded file and rename the folder with the name of your project
-   Double click on `R.Rproj` file to open the project in RStudio
-   Familiarise with the template
    -   Explore the example code in `code/main.R` and the other R scripts
    -   Look at what files are read and created in each step of the analysis
-   When you're ready to use this template
    -   Remove any example code and files
    -   (Optional) If your code uses existing data, save it to `data/raw`
    -   Start lining out the main steps of your analysis in `code/main.R` (you can delete or adapt the example code)
    -   You may break down steps into sub-steps
    -   Create new R scripts for your function definitions and save your R scripts in the folder `code/R/`
    -   Save any output that you might want to reuse to `data/output/`
    -   Save any figures to `data/figures`

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
-   Never use your code to **write** to `data/raw/`. Preserving the integrity of your original (raw) input data is of paramount importance. The raw data should be read-only, and any output that is *derived* from your raw data should be saved in `data/output/`.
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
