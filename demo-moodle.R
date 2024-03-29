## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("deriv.Rmd", "swisscapital.Rmd", "boxplots.Rmd", "function.Rmd", "lm.Rmd")


## exams2moodle ---------------------------------------------------------------------
## Moodle XML output (1 file containing all exams)
## -> for import into a Moodle system

## generate Moodle exam with three replications per question
exams2moodle(myexam, n = 3, name = "moodle-demo",
  dir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/output",
  edir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises")

## hint: to quickly check (prior to Moodle export) whether each exercise can be
## converted to HTML, exams2html() can be used
exams2html("/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises/deriv.Rmd")


## ----------------------------------------------------------------------------------
