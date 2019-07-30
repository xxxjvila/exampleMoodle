rm(list=ls())
library(exams)
setwd("/Users/jvila/Dropbox/UseR2019/ExampleMoodle")

## create exams skeleton with:
## - demo-*.R scripts
## - exercises/ folder with all .Rmd/.Rnw exercises
## - templates/ folder with various customizable templates
## - nops/ folder (empty) for exams2nops output

# dir.create(mydir <- getwd())
# exams_skeleton(dir = mydir, absolute = TRUE)


# T: mc = multiple choice; di = different options
# V: number of valid anwser; 01 = only one; se= several
# P: include plot
# D: include data

# swisscapital.Rmd"
exams2html("./exercises/TmcV01PnoDno1.Rmd", converter = "pandoc-mathjax")

# anova.Rmd
exams2html("./exercises/TmcVsePyesDno1.Rmd", converter = "pandoc-mathjax")

# automaton.Rmd: needs 'magick' package
exams2html("./exercises/TmcVsePyesDno2.Rmd", converter = "pandoc-mathjax")

# boxhist.Rmd: 
exams2html("./exercises/TdiVsePyesDyes1.Rmd", converter = "pandoc-mathjax")


## Moodle
elearn_exam <- c("TmcV01PnoDno1.Rmd",
                 "TmcVsePyesDno1.Rmd", 
                 "TmcVsePyesDno2.Rmd",
                 "TdiVsePyesDyes1.Rmd")

set.seed(2019-07-09)
exams2moodle(elearn_exam, n = 5, name = "toMoodle",
             dir = "output", edir = "exercises")


# Pregunta 1: 
exams2html("./exercises/TipVar01.Rmd", converter = "pandoc-mathjax")

# Pregunta 2: 
exams2html("./exercises/TipVar02.Rmd", converter = "pandoc-mathjax")
