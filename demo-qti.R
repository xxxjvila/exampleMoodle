## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("deriv.Rmd", "swisscapital.Rmd", "boxplots.Rmd", "function.Rmd", "lm.Rmd")


## exams2qti12 ----------------------------------------------------------------------
## XML output in QTI 1.2 format (1 file containing all exams, zipped by default)
## -> for import into QTI-based learning management systems (e.g., OLAT/OpenOLAT)

## generate QTI 1.2 exam with three replications per question
## (showing correct solutions after failed attempts and passing if solving
## at least two items)
exams2qti12(myexam, n = 3, name = "qti12-demo",
  dir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/output",
  edir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises",
  solutionswitch = TRUE, maxattempts = 1, cutvalue = 2)

## hint: if customization of the QTI 1.2 template is necessary, modify
## the file templates/qti12.xml and then set the argument:
## template = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/templates/qti12.xml"

## hint: to quickly check (prior to QTI export) whether each exercise can be
## converted to HTML, exams2html() can be used
exams2html("/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises/deriv.Rmd")


## exams2qti21 ----------------------------------------------------------------------
## XML output in QTI 2.1 format (1 file containing all exams, zipped by default)
## -> for import into QTI-based learning management systems

## generate QTI 2.1 exam with three replications per question
## (showing correct solutions after failed attempts and passing if solving
## at least two items)
exams2qti21(myexam, n = 3, name = "qti21-demo",
  dir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/output",
  edir = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises",
  solutionswitch = TRUE, maxattempts = 1, cutvalue = 2)

## hint: if customization of the QTI 2.1 template is necessary, modify
## the file templates/qti21.xml and then set the argument:
## template = "/Users/jvila/Dropbox/UseR2019/ExampleMoodle/templates/qti21.xml"

## hint: to quickly check (prior to QTI export) whether each exercise can be
## converted to HTML, exams2html() can be used
exams2html("/Users/jvila/Dropbox/UseR2019/ExampleMoodle/exercises/deriv.Rmd")


## ----------------------------------------------------------------------------------
