## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("deriv.Rmd", "swisscapital.Rmd", "boxplots.Rmd", "function.Rmd", "lm.Rmd")


## exams2pdf ------------------------------------------------------------------------
## PDF output (1 file per exam)
## -> typically used for quickly checking if an exercise can be converted to PDF
## -> or customized via suitable templates

## generate the PDF version of a single exercise (shown in PDF viewer)
## with default settings
exams2pdf("/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises/deriv.Rmd")

## generate a single PDF exam (shown in PDF viewer)
## with specification of a template (for an exam) %s encoding
exams2pdf(myexam, n = 1,
  edir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises",
  template = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/templates/exam.tex")

## generate three PDF exams and corresponding solutions in output directory
## (with the header used to set a custom Date and ID for the exam)
exams2pdf(myexam, n = 3, name = c("pdf-exam", "pdf-solution"),
  dir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/output",
  edir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises",
  template = c("/Users/jvila/Dropbox/UseR2019/ExampleMoodle/templates/exam.tex", "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/templates/exam.tex"),
  header = list(
    Date = "2015-01-01",
    ID = function(i) formatC(i, width = 5, flag = "0")
  ))


## ----------------------------------------------------------------------------------
